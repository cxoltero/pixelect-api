class Image < ActiveRecord::Base
  # if we add a attr_accessor, we have to make sure we add :image to it

  has_one :user, through: :image_sets
  belongs_to :image_set

  acts_as_votable
  # this is from Carrierwave to be able to upload images
  mount_uploader :image, ImageUploader

end
