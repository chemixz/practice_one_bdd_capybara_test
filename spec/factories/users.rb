FactoryBot.define do
  factory :user do
    first_name { Faker::Name.first_name }
    email { Faker::Internet.unique.email(name: first_name) }
    last_name { Faker::Name.last_name }
    username { Faker::Internet.username }
    password {'mypassword'}
    password_confirmation {'mypassword'}
  end
end