require 'stop_words'
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

	def meaningful_words phrase, divider=" "
		phrase = normalize_phrase(phrase).split(divider)
		filter(phrase)
	end

	def normalize_phrase(phrase)
		phrase.to_s.downcase
	end

	def filter phrase
		words = phrase.reject{ |word| stopwords_list.include? word }
		words.reject{ |word| valid_word? word}
	end

	def valid_word? word
		stopwords_list.collect{ |w| w if w.include? word }.uniq.any?
	end
end