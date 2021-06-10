class Recommendation < ActiveHash::Base
  self.data = [
    { id: 1, name: 'オススメ度を選択' },
    { id: 2, name: '⭐' },
    { id: 3, name: '⭐️⭐️' },
    { id: 4, name: '⭐️⭐️⭐️' },
    { id: 5, name: '⭐️⭐️⭐️⭐️' },
    { id: 6, name: '⭐️⭐️⭐️⭐️⭐️' }
  ]
  ️
  include ActiveHash::Associations
  has_many :products
end