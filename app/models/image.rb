class Image < ActiveRecord::Base
  # if we add a attr_accessor, we have to make sure we add :image to it
  # when we do our forms we have to make sure to add the following:
            # <% f.file_field :image %>
  #also to handle file attachments we have to pass a multipart option
     # inside your form <%= form_for @paiting, :html => {multipart => true} do ||}

  has_one :user, through: :image_sets
  belongs_to :image_set

  acts_as_votable
  # this is from Carrierwave to be able to upload images
  mount_uploader :image, ImageUploader

end
