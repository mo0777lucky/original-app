class Product < ApplicationRecord

  with_options presence: true do
    validates :title
    validates :image
    validates :category_id
    validates :description
    validates :prefecture_id
    validates :municipality
  end

  belongs_to :user
  #has_many :comments, dependent: :destroy
  has_one_attached :image
end
