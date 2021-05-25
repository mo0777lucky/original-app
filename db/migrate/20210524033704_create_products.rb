class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string     :title,         null: false 
      t.integer    :category_id,   null: false 
      t.text       :description,   null: false 
      t.integer    :prefecture_id, null: false 
      t.string     :municipality,  null: false 
      t.references :user,          null: false, foreign_key: true

      t.timestamps
    end
  end
end