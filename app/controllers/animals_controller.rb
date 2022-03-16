class AnimalsController < ApplicationController
  before_action :check_if_logged_in, except: [:index, :show]

  def new
    @animal = Animal.new
  end

  def index
    @animals = Animal.all
    render json: @animals
  end

  def create
    @panimal = Animal.new animal_params

    if params[:animal][:image].present?
      # Forward the uploaded image on to Cloudinary (using the gem):
      response = Cloudinary::Uploader.upload params[:animal][:image]
      a response  # so we can see what the response looks like
      @animal.image = response["public_id"] # add to the item we are saving
    end  # upload check
    @animal.user_id = @current_user.id
    @animal.save
    # to do :checkvalidation and show errors on form (mixtapes controller)
    redirect_to animals_path
  end

  ``

  def show
    @animal = Animal.find params[:id]
  end

  def edit
    @animal = Animal.find params[:id]
  end

  def destroy
  end
end
