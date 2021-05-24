class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '地域公園' },
    { id: 3, name: '自然公園' },
    { id: 4, name: '水・川・池など' },
    { id: 5, name: '山・登山・ハイキングなど' },
    { id: 6, name: '庭園' },
    { id: 7, name: '遊歩道' },
    { id: 8, name: '展望台' },
    { id: 9, name: 'その他' },
  ]

  include ActiveHash::Associations
  has_many :products
end