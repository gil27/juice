module Calculations
	extend ActiveSupport::Concern

	# Terms with more than one occurrence
	def top_terms
		terms = find_terms
		(Array.new << terms).flatten.uniq
	end

	def top_queries
		pluck(:query).inject(Hash.new(0)) { |total, e| total[e] += 1;total}
	end

	def top_terms_occurrence
		all_terms.inject(Hash.new(0)) { |total, e| total[e] += 1;total}
	end

	def all_terms
		score = Score.new
		terms = Array.new
		Analyzer.find_each{ |a| terms << score.analyze(a) }
		terms.flatten
	end

	private
	
	def find_terms
		terms = all_terms
		terms.find_all{ |e| terms.count(e) > 1 } || terms
	end
end