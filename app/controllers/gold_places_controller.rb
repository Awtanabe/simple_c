class GoldPlacesController < ApplicationController
  before_action :set_gold_place, only: [:show, :edit, :update, :destroy]

  # GET /gold_places
  # GET /gold_places.json
  def index
    @gold_places = GoldPlace.all
  end

  # GET /gold_places/1
  # GET /gold_places/1.json
  def show
  end

  # GET /gold_places/new
  def new
    @gold_place = GoldPlace.new
  end

  # GET /gold_places/1/edit
  def edit
  end

  # POST /gold_places
  # POST /gold_places.json
  def create
    @gold_place = GoldPlace.new(gold_place_params)

    respond_to do |format|
      if @gold_place.save
        format.html { redirect_to @gold_place, notice: 'Gold place was successfully created.' }
        format.json { render :show, status: :created, location: @gold_place }
      else
        format.html { render :new }
        format.json { render json: @gold_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gold_places/1
  # PATCH/PUT /gold_places/1.json
  def update
    respond_to do |format|
      if @gold_place.update(gold_place_params)
        format.html { redirect_to @gold_place, notice: 'Gold place was successfully updated.' }
        format.json { render :show, status: :ok, location: @gold_place }
      else
        format.html { render :edit }
        format.json { render json: @gold_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gold_places/1
  # DELETE /gold_places/1.json
  def destroy
    @gold_place.destroy
    respond_to do |format|
      format.html { redirect_to gold_places_url, notice: 'Gold place was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gold_place
      @gold_place = GoldPlace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gold_place_params
      params.require(:gold_place).permit(:name, :prefecture)
    end
end
