class PagesController < ApplicationController
  def home
  	@recent_awards = Award.where("reviewed = true AND approved = true").order('created_at')
  	# @featured_awards = Award.all
  end

  def about
  end
end
