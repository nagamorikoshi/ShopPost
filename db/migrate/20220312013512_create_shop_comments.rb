class CreateShopComments < ActiveRecord::Migration[6.1]
  def change
    create_table :shop_comments do |t|
      t.text :comment
      t.references :customers
      t.references :shop_images

      t.timestamps
    end
  end
end
