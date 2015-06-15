class CreateAwardsUsers < ActiveRecord::Migration
def self.up
    create_table :awards_users, :id => false do |t|
      t.integer :award_id
      t.integer :user_id
    end

    add_index :awards_users, [:award_id, :user_id]
  end

  def self.down
    drop_table :award_users
  end
end
