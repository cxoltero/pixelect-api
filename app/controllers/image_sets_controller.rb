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

    # original code

    # @image_set = ImageSet.create(image_set_params)

    # render json: @image_set

# code for imageMagick
    @image_set = current_user.image_sets.guild(image_set_params)
    authorize @image_set
    if @image_set.save
      # to handle multiple image upload on create
      if params[:images]
        params[:images].each {|image|
          @image_set.images.create(image: image)
        }
      end
      flash[:notice] = "Your image set has been created."
      redirect_to @image_set
    else
      flash[:alert] = "Something went wrong."
      render 'new'
    end

  end

# created for multiple image uploading
  def update
    authorize @image_set
    if @image_set.update(params[:image_set].permit(:title, :description))
      # to handle multiple images upload on update when user add more pictures
      if params[:images]
        params[:images].each {|image|
          @image_set.images.create(image: image)
        }
      end

      flash[:notice] = "Your image set has been updated!."
      redirect_to @image_set
    else
      flash[:alert] = "Something went wrong."
      render 'edit'
    end
  end

  private

    def image_set_params
      params.require(:image_set).permit(:question, :user_id)
    end
end
