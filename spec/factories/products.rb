FactoryBot.define do
  
  factory :product do
    title         {"自然公園に行ってきた！"}
    category_id   {５}
    description   {"あああああああああああああああああ"}
    prefecture_id {５}
    municipality  {東京都渋谷区}
    
    association :user

    after(:build) do |product|
      product.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end   
