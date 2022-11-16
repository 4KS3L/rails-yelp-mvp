require 'faker'

Restaurant.destroy_all

5.times do |index|
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::Number.leading_zero_number,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample()
)
end

puts "Created #{Restaurant.count} restaurants!"
