class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true
  validates :profile, presence: true

  has_many :products
  has_many :comments

  has_many :favorites, dependent: :destroy
  has_many :favorited_products, through: :favorites, source: :product 

  #def already_favorited?(product)
    #self.favorites.exists?(product_id: product.id)
  #end

  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
  validates_format_of :password, with: PASSWORD_REGEX

  def favorited_by?(product_id)
    favorites.where(product_id: product_id).exists?
  end

end
