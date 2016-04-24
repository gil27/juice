class Analyzer < ActiveRecord::Base
	
	def to_s
		query.to_s
	end

	def to_str
		to_s
	end
end
