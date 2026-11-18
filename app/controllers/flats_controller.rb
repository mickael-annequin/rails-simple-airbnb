class FlatsController < ApplicationController
  # before action a faire
  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to @flat, notice: "Your flat has been successfully added"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    set_flat
  end

  def edit
    set_flat
  end

  def update
    set_flat
    if @flat.update(flat_params)
      redirect_to @flat, notice: "Your flat was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    set_flat
    @flat.destroy
    redirect_to flats_path, notice: "Flat was successfully deleted", status: :see_other
  end

  private

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests, :picture_url)
  end
end
