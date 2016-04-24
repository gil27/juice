class Analyzer < ActiveRecord::Base
	after_commit :remove_middle_query

	def remove_middle_query
		delete_middle_query
		score = calculate_score
		self.delete if score.zero?
	end

	def delete_middle_query
		previous = Analyzer.where(user_ip: self.user_ip)[-2]
		if previous && self.query.include?(previous.query)
			previous.delete
		end
	end

	def calculate_score
		score = Score.new
		score.analyze(self)
		score.score
	end

	def to_s
		query.to_s
	end

	def to_str
		to_s
	end
end
