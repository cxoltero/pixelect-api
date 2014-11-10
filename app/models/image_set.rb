class ImageSet < ActiveRecord::Base

  has_many :images, :inverse_of => :image_set, :dependent => :destroy
  accepts_nested_attributes_for :photos, allow_destroy: true
  has_many :comments
  belongs_to :user

end
