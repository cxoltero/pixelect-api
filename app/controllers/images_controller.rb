class ImagesController < ApplicationController
# Carrierwave settings


  # GET /images
  # GET /images.json
  def index
    @images = Image.all
    render json: @images
  end

  # GET /images/1
  # GET /images/1.json
  def show
    @image = Image.find(params[:id])

    render json: @image
  end

  # POST /images
  # POST /images.json
  def create
    @image = Image.create(image_params)
    @image.save

  end

  private

  def image_params
    params.require(:image).permit(:image_set_id)
  end
end
