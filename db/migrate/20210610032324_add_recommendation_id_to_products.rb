class AddRecommendationIdToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :recommendation_id, :integer
  end
end
