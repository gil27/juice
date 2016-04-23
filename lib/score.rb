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
		phrase = phrase.to_s.downcase.split(divider)
		phrase.reject{ |word| stopwords_list("en").include? word }
	end
end