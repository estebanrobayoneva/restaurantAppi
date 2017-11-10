class PlatesController < ApplicationController
  before_action :set_plate, only: [:show, :update, :destroy]

  # GET /plates
  def index
    @plates = Plate.all

    render json: @plates
  end

  # GET /plates/1
  def show
    render json: @plate
  end

  # POST /plates
  def create
    @plate = Plate.new(plate_params)

    if @plate.save
      render json: @plate, status: :created, location: @plate
    else
      render json: @plate.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /plates/1
  def update
    if @plate.update(plate_params)
      render json: @plate
    else
      render json: @plate.errors, status: :unprocessable_entity
    end
  end

  # DELETE /plates/1
  def destroy
    @plate.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plate
      @plate = Plate.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def plate_params
      params.require(:plate).permit(:nombre, :precio)
    end
end
