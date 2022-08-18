class WaresController < ApplicationController
  before_action :set_ware, only: [:show, :edit, :update, :destroy]

  def index
    @wares = Ware.all
  end

  def my_wares
    @wares = current_user.wares
  end

  def show
  end

  def new
    @ware = Ware.new
  end

  def create
    @ware = Ware.new(ware_params)
    @ware.user = current_user
    if @ware.save
      redirect_to @ware
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @ware.update(ware_params)
      redirect_to @ware
    else
      render :edit
    end
  end

  def destroy
    @ware.destroy
    redirect_to my_wares_path
  end

  private

  def set_ware
    @ware = Ware.find(params[:id])
  end

  def ware_params
    params.require(:ware).permit(:name, :description, :price, :picture_url, photos: [])
  end
end
