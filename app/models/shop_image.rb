class ShopImage < ApplicationRecord
  has_one_attached :image
  belongs_to :customer, optional: true
  has_many :shop_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  
  validates :name, presence: true
  validates :image, presence: true
  
  def get_image
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    image
  end
  
  def favorited_by?(customer)
    favorites.exists?(customer_id: customer.id)
  end
end
