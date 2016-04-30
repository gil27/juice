class Analyzer < ActiveRecord::Base
	extend Calculations

	after_commit :delete_unecessary_query

	def to_s
		query.to_s
	end

	def to_str
		to_s
	end
	
	private

	# Private: Delete unecessary query from database.
	#
	# Examples
	#
	#   Given the queries:
	#     - How do I
	#     - How do I cancel my subscription
	#
	#   delete_unecessary_query
	#   # => 'How do I' - Deletes 'How do I'
	#
	# Keeps just the last and meaninful query.
	def delete_unecessary_query
		delete_middle_query
		score = calculate_score
		self.delete if score.zero?
	end

	# Private: Delete middle query from database.
	#
	# Examples
	#
	#   Given the queries:
	#     - H
	#     - Ho
	#     - How
	#     - How do
	#     - How do I
	#     - How do I cancel
	#     - How do I cancel my subscription
	#
	#   delete_middle_query
	#   # => 'How do I cancel my subscription'
	#
	# Keeps just the last and meaninful query.
	def delete_middle_query
		previous = Analyzer.where(user_ip: self.user_ip)[-2]
		if previous && self.query.downcase.include?(previous.query.downcase)
			previous.delete
		end
	end

	# Public: Calculate the number of meaninful words in the query.
	#
	# Examples
	#
	#   Given the query:
	#     - How do I cancel my subscription
	#
	#   calculate_score
	#   # => 2
	#
	# Returns the number of meaningful words.
	def calculate_score
		score = Score.new
		score.analyze(self)
		score.score
	end
end
