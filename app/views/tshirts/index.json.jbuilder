json.array!(@tshirts) do |tshirt|
  json.extract! tshirt, :id, :name, :email, :phone, :shirts, :total
  json.url tshirt_url(tshirt, format: :json)
end
