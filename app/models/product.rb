class Product < ActiveRecord::Base
  belongs_to :user

  mount_uploader :photo, PhotoUploader

  paginates_per 3
end
