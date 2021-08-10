class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update]
  def index
    @pets = Pet.all
  end

  # GET '/pets/:id'
  def show
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)

    if @pet.save
      redirect_to pets_path
    else
      render :new
    end
  end

  # get 'pets/:id/edit'
  def edit

  end

  # patch 'pets/:id'
  def update
    if @pet.update(pet_params)
    redirect_to @pet
    else
    render 'edit'
    end
  end

  private

  def set_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:name, :address, :species, :found_on)
  end



end
