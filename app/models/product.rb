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

  has_many :favorites, dependent: :destroy
  has_many :favorited_users, through: :favorites, source: :user
  
  
  has_one_attached :image


  def self.search(search)
    if search != ""
      Product.where('title LIKE(?)', "%#{search}%")
    else
      Product.all
    end
  end

  #def favorite_user(user_id)
   #favorites.find_by(user_id: user_id)
  #end
  #def favorited_by?(user)
    #favorites.where(user_id: user.id).exists?
  #end
  #def favorites_count
  #end

  #def self.search(prefecture_id)
  #if search != ""
    #Product.where("%#{prefecture_id}%")
  #else
    #Product.all
  #end
end

