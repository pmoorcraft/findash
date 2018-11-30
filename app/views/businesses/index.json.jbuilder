json.array!(@businesses) do |business|
  json.extract! business, :id, :name, :user_id
  json.url business_url(business, format: :json)
end
