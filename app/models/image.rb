class Image < ActiveRecord::Base
  belongs_to :images, :polymorphic => true
  mount_uploader :image, ImageUploader
end
