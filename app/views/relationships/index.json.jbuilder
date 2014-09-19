json.array!(@relationships) do |relationship|
  json.extract! relationship, :id, :account_id, :name, :firstname, :relationship_type, :since, :deleted_since, :address, :domicile, :nationality, :birthdate
  json.url relationship_url(relationship, format: :json)
end
