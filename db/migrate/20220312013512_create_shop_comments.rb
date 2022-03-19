class CreateShopComments < ActiveRecord::Migration[6.1]
  def change
    create_table :shop_comments do |t|
      t.text :comment
      t.references :customer
      t.references :shop_image

      t.timestamps
    end
  end
end
