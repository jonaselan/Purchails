FactoryBot.define do
  factory :author do
    name { Faker::Number.number(2) }
    publishing_company { Faker::Lorem.sentence(1) }
  end
end