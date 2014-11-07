class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
<<<<<<< HEAD
<<<<<<< HEAD
  has_many :image_sets
=======
>>>>>>> 44bb608... update gemlock
=======
  has_many :image_sets
>>>>>>> b898d49... created image sets migration
end
