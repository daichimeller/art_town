json.array!(@habitants) do |habitant|
  json.extract! habitant, :id, :name, :password, :mail_address
  json.url habitant_url(habitant, format: :json)
end
