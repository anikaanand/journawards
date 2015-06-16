class PagesController < ApplicationController
  def home
  	@recent_awards = Award.all
  	@featured_awards = Award.all
  	@search = Award.search do 
  		fulltext params[:search]
  	end
  end

  def about
  end
end
