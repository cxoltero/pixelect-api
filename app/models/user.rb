class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :image_sets


# the following line may or may not be used depending onthe setting that we give for the image uploader.
  # mount_uploader :image, ImageUploader
end
