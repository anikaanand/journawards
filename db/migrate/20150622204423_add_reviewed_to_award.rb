class AddReviewedToAward < ActiveRecord::Migration
  def change
  	add_column :awards, :reviewed, :boolean
  	add_column :awards, :approved, :boolean
  	add_column :users, :admin, :boolean
  end
end
