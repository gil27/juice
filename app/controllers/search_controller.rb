class SearchController < ApplicationController
  def index
  	@search = params[:search]
  	save_search if params[:search].present?
  	
  	respond_to do |format|
  		format.html
  		format.js
  	end
  end

  private

  def save_search
  	Analyzer.create(query: params[:search], user_ip: request.ip)
  end
end
