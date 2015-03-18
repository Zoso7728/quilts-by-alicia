json.array!(@long_arms) do |long_arm|
  json.extract! long_arm, :id, :name, :email, :phone, :size, :batting, :binding, :quilting, :pantograph_patterns, :total
  json.url long_arm_url(long_arm, format: :json)
end
