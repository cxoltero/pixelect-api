class Image < ActiveRecord::Base

  has_one :user, through: :image_sets
  belongs_to :image_set

  acts_as_votable

end