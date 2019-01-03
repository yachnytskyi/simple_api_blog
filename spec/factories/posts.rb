FactoryBot.define do
  factory :post do
    title { Faker::Lorem.word }
    body { Faker::Lorem.word }
    category_id nil
  end
end
