FactoryBot.define do
  factory :item do
    title { Faker::Lorem.sentence(2) }
    slug { Faker::Lorem.sentence(1) }
    visible { true }
    published_at { Faker::Date.between(2.days.ago, Date.today) }
    observations { Faker::Lorem.paragraph }
    summary { Faker::Lorem.paragraph }
    itemable { create(:book) }
    author_id { create(:author).id }
  end

  factory :not_visible do
    visible { false }
  end
end