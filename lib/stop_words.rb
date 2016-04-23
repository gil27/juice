module StopWords
	WORDS_PATH = 'config/locales/'
	def stopwords_list locale="en"
		load_file.fetch(locale.to_s).split(" ")
	end

	private 
	# Load YAML file
	#
	# Given a filename it loads the file into
	def load_file(filename="stopwords_en.yml")
		@file ||= YAML.load_file(WORDS_PATH << filename.to_s)
	end
end