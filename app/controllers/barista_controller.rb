class BaristaController < ApplicationController
  before_action :set_barista, only: [:show, :update, :destroy]

  def index
    @barista = Barista.all

    render json: @barista
  end

  def show
    render json: @barista
  end

  def create
    @barista = Barista.new(barista_params)

    if @barista.save
      render json: @barista, status: :created, location: @barista
    else
      render json: @barista.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @barista.destroy
  end

  private

  def set_barista
    @barista = Barista.find(params[:id])
  end


  def barista_params
    params.require(:barista).permit(:name)
  end
end
