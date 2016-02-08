class ProductCategory < ActiveRecord::Base
  has_many :product_bundles
  has_many :products
  has_many :images, :as => :imageable
  # accepts_nested_attributes_for :product_bundles, :allow_destroy => true
  accepts_nested_attributes_for :images, :allow_destroy => true
end
