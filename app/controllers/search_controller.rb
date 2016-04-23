class SearchController < ApplicationController
  def index
  	@search = params[:search]

  	respond_to do |format|
  		format.html
  		format.js
  	end
  end
end
