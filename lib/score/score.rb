require_relative 'stop_words.rb'
class Score
	include StopWords

	# Public: Duplicate some text an arbitrary number of times.
	#
	# phrase  - The to be analyzed.
	#
	# Examples
	#
	#   analyze('How can I cancel my subscription')
	#   # => ['cancel', 'subscription']
	#
	# Returns the meaningful words.
	def analyze phrase
		@meaningful_words = meaningful_words(phrase, " ")
	end

	# Public: Total of meaningful words.
	#
	# Examples
	#
	#   score
	#   # => 3
	#
	# Returns the score.
	def score
		@meaningful_words.count
	end

	private

	# Private: Normalize and Bring just the meaningful words based on
	# the yaml list
	#
	# Examples
	#
	#   meaningful_words 'How do I cancel my account', ' '
	#   # => ['cancel', 'account']
	#
	# Returns the array of meaningful words.
	def meaningful_words phrase, divider=" "
		phrase = normalize_phrase(phrase).split(divider)
		filter(phrase)
	end

	# Private: Converts do string and downcase the phrase.
	#
	# Examples
	#
	#   normalize_phrase 'HOW DO I CANCEL MY ACCOUNT'
	#   # => how do i cancel my account
	#
	# Returns the phrase after downcase it.
	def normalize_phrase phrase
		phrase.to_s.downcase
	end

	# Private: Bring just the meaningful words based on
	# the yaml list
	#
	# Examples
	#
	#   meaningful_words 'How do I cancel my account', ' '
	#   # => ['cancel', 'account']
	#
	# Returns the array of meaningful words.
	def filter phrase
		words = phrase.reject{ |word| stopwords_list.include? word }
		words.reject{ |word| invalid_word? word}
	end

	# Private: Checks if it is a middle word
	#
	# Examples
	#
	#   invalid_word? 'Ho'
	#   # => true
	#
	# Returns the score.
	def invalid_word? word
		stopwords_list.collect{ |w| w if w.include? word.to_s.strip }.uniq.any?
	end
end