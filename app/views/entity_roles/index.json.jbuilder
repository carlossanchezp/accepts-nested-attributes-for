json.array!(@entity_roles) do |entity_role|
  json.extract! entity_role, :id
  json.url entity_role_url(entity_role, format: :json)
end
