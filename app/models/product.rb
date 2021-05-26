class Product < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :prefecture

  with_options presence: true do
    validates :title
    validates :image
    validates :description
    validates :municipality
  end


  validates :category_id, :prefecture_id, numericality: { other_than: 1 }
  
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :image
end
