FactoryBot.define do
  
  factory :product do
    title         {"自然公園に行ってきた！"}
    category_id   {2}
    description   {"あああああああああああああああああ"}
    prefecture_id {2}
    municipality  {"渋谷区"}
    
    association :user

    after(:build) do |product|
      product.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end   
