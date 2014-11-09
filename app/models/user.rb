class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
<<<<<<< HEAD


  has_many :image_sets



  has_many :image_sets

=======
  has_many :image_sets
>>>>>>> b7cc79841e83ecf4b4dd98d05c6d9a4e28e2e36a
end
