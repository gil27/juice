class StatsController < ApplicationController
  def index
  	@stats = Analyzer.all
  end
end
