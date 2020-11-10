class PetsController < ApplicationController

  before_action :find_pet, only: [:show, :edit, :update, :destroy]

  def index   # See all lost pets
    @pets = Pet.all
  end

  def show   # See 1 particular lost pet
    # raise
    # @pet = Pet.find(params[:id])
  end

  def new
    @pet = Pet.new # empty instance of pet for the form
  end

  def create
    # raise
    @pet = Pet.new(strong_params)
    @pet.save

    redirect_to pet_path(@pet)
  end

  def edit
    # @pet = Pet.find(params[:id])
  end

  def update
    # raise
    # @pet = Pet.find(params[:id])
    @pet.update(strong_params)

    redirect_to pet_path(@pet)
  end

  def destroy
    # @pet = Pet.find(params[:id])
    @pet.destroy

    redirect_to pets_path
  end

  private

  def strong_params # whitelist our params, ONLY these are allowed, no hacker inputs
    params.require(:pet).permit(:name, :address, :species, :found_on)
  end

  def find_pet
    @pet = Pet.find(params[:id])
  end

end
