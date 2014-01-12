class User < ActiveRecord::Base
 validates :email, presence: true
 validates :image, presence: true
  mount_uploader :image, ImageUploader
  acts_as_taggable_on :tags
end
