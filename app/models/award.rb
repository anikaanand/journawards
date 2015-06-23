class Award < ActiveRecord::Base
  include AlgoliaSearch
  
  belongs_to :organization

  algoliasearch if: :approved do
  	attribute :name, :description, :notes, :entry_fee, :prize, :deadline, :entrant_type, :medium_type, :content_type, :subject_type

  	attribute :organization do
  		organization.name
  	end

  	attributesToIndex ['unordered(description)', 'unordered(notes)']

  	attributesToHighlight ['name', 'description', 'notes', 'organization'] 

  	attributesForFaceting [:entrant_type, :medium_type, :content_type, :subject_type]

  end
end
