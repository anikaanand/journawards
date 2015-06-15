json.array!(@awards) do |award|
  json.extract! award, :id, :name, :link, :description, :notes, :entry_fee, :prize, :deadline, :entrant_type, :medium_type, :content_type, :subject_type, :organization_id
  json.url award_url(award, format: :json)
end
