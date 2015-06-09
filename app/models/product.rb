class Product < ActiveRecord::Base
  include PgSearch
  extend FriendlyId
  multisearchable :against => [:nombre, :description]
  belongs_to :user

  mount_uploader :photo, PhotoUploader

  paginates_per 3

  friendly_id :nombre, use: [:slugged, :finders]
end
