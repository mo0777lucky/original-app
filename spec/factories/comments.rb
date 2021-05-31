FactoryBot.define do
  factory :comment do
    text {"美しいですね！"}

    association :user
    association :product
  end
end