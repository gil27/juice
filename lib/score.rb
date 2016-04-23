require 'stop_words'
class Score
	include StopWords

	def calculate phrase
		@meaninful_words = meaninful_words(phrase, " ", locale)
	end

	def score
		@meaninful_words.count
	end

	private

	def meaninful_words phrase, divider=" ", locale="en"
		phrase = phrase.to_s.downcase.split(divider)
		phrase.reject{ |word| stopwords_list(locale).include? word }
	end
end