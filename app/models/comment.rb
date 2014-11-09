class Comment < ActiveRecord::Base

  belongs_to :image_set
  has_one :user, through: :image_set

end
