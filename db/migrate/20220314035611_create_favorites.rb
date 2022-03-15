class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
      
      t.references :customers
      t.references :shop_images

      t.timestamps
    end
  end
end
