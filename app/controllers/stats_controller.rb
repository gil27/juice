class StatsController < ApplicationController
	layout 'stats'

  def index
  	@stats = Analyzer.all
  	@graph = morris_graph
  end

  def morris_graph
  	data = []
  	terms = Analyzer.top_terms_occurrence
  	terms.each_with_object({}) do |obj|
  		data << ({'y' => obj[0], 'x' => obj[1]})
  	end
  	data.to_json
  end

  def erase
    %x(rake db:schema:load)
    redirect_to stats_path
  end

  def seed
    %x(rake db:seed)
    redirect_to stats_path
  end
end
