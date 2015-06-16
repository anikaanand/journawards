class Award < ActiveRecord::Base
  belongs_to :organization

  searchable do
  	text :name, :boost => 5
  	text :description
  	text :organization do
  		organization.name
  	end
  	text :notes, :entrant_type, :content_type, :subject_type
  	text :entry_fee, :prize
  end
end
