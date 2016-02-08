class Product < ActiveRecord::Base
  belongs_to :product_bundle
  belongs_to :product_category
  has_many :images, :as => :imageable

  validates :name, :price, :presence => true

  before_create :set_product_category

  # This method saves the category_id for a product before saving it to database
  def set_product_category
    self.product_category_id = self.product_bundle.product_category_id
  end

end
