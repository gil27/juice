require 'stop_words'
class Score
	include StopWords

	def calculate phrase
		@meaninful_words = meaninful_words(phrase, " ")
	end

	def score
		@meaninful_words.count
	end

	private

	def meaninful_words phrase, divider=" "
		phrase = normalize_phrase(phrase).split(divider)
		filter(phrase)
	end

	def normalize_phrase(phrase)
		phrase.to_s.downcase
	end

	def filter phrase
		phrase.reject{ |word| stopwords_list.include? word }
	end
end