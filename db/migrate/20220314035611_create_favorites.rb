class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
      
      t.references :customer
      t.references :shop_image

      t.timestamps
    end
  end
end
