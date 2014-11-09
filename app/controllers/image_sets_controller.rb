class ImageSetsController < ApplicationController

  # GET /image_sets
  # GET /image_sets.json
  def index
    @image_sets = ImageSet.all

    render json: @image_sets
  end

  # GET /image_sets/1
  # GET /image_sets/1.json
  def show
    @image_set = ImageSet.find(params[:id])

    render json: @image_set
  end

  # GET /image_sets
  # GET /image_sets.json
  def create
    @image_set = ImageSet.create(image_set_params)

    render json: @image_set
  end

  private

    def image_set_params
      params.require(:image_set).permit(:question, :user_id)
    end
end
