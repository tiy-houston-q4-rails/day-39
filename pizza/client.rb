require 'faraday'
require 'faker'
require 'active_support/all'

conn = Faraday.new(:url => 'http://localhost:3000')

10.times do

  pizza_joint_name = [Faker::Company.name, "Pizza"].join(" ")

  response = conn.post do |req|
    req.url '/api/places.json'
    req.headers['Content-Type'] = 'application/json'
    req.body = { 
      place: {
        name: pizza_joint_name,
        city: Faker::Address.city
      }
    }.deep_stringify_keys.to_json
  end

end
