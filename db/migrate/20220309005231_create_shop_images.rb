class CreateShopImages < ActiveRecord::Migration[6.1]
  def change
    create_table :shop_images do |t|
      t.string :name
      t.text :caption
      t.references :customers

      t.timestamps
    end
  end
end
