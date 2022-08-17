class WaresController < ApplicationController
  before_action :set_ware, only: [:show, :edit, :update, :destroy]

  def index
    @wares = Ware.all
  end

  def show
  end

  def new
    @ware = Ware.new
  end

  def create
    @ware = Ware.new(ware_params)
    @ware.user = current_user
    if ware.save
      redirect_to ware
    else
      render :new
    end
  end

  def edit
  end

  def update

  end

  def destroy
    @ware.destroy
    redirect_to wares_path
  end

  private

  def set_ware
    @ware = Ware.find(params[:id])
  end
end
