class ProductBundle < ActiveRecord::Base
  belongs_to :product_category
  has_many :products
  has_many :images, :as => :imageable
  accepts_nested_attributes_for :images, :allow_destroy => true
end
