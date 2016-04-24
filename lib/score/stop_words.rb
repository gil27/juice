module StopWords
	WORDS_PATH = 'config/locales/'

	# Public: Fetch all the stop words list from the  yaml file
	#
	# locale  - The locale of words list.
	# filename - The filename to be oppened from WORDS_PATH.
	#
	# Examples
	#
	#   stopwords_list('en', '')
	#   # => ['I', 'am', 'an', 'example']
	#
	# Returns the array of stopwords.
	def stopwords_list locale="en", filename=""
		load_file.fetch(locale.to_s).split(" ")
	end

	private 
	# Load YAML file
	#
	# Given a filename it loads the file into @filename variable
	def load_file(filename="stopwords_en.yml")
		@file ||= YAML.load_file("#{WORDS_PATH}#{filename.to_s}")
	end
end