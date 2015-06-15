class PagesController < ApplicationController
  def home
  	@recent_awards = Award.all
  	@featured_awards = Award.all
  end

  def about
  end
end
