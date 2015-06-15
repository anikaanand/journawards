class CreateAwards < ActiveRecord::Migration
  def change
    create_table :awards do |t|
      t.string :name
      t.string :link
      t.string :description
      t.string :notes
      t.string :entry_fee
      t.string :prize
      t.date :deadline
      t.string :entrant_type
      t.string :medium_type
      t.string :content_type
      t.string :subject_type
      t.references :organization, index: true

      t.timestamps null: false
    end
    add_foreign_key :awards, :organizations
  end
end
