json.array!(@propositions) do |proposition|
  json.extract! proposition, :id, :name, :year, :number, :remote_id, :presantation_date, :purpose_description, :purpose_explanation
  json.url proposition_url(proposition, format: :json)
end
