FactoryBot.define do
  factory :post do
    title { Faker::Space.star }
  end
end
