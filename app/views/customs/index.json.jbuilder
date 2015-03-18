json.array!(@customs) do |custom|
  json.extract! custom, :id, :name, :email, :phone, :size, :quilting, :pantograph_patterns, :total
  json.url custom_url(custom, format: :json)
end
