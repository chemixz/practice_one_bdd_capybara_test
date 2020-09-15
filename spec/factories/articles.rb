FactoryBot.define do
  factory :article do
    title { Faker::Educator.university }
    description {Faker::Educator.subject}
    user_id {Faker::Number.between(from: 1, to: 10) }
  end
end
