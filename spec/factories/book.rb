FactoryBot.define do
  factory :book do
    units { Faker::Number.number(2) }
    pages { Faker::Number.number(2) }
  end
end