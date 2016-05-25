class PetinfosController < ApplicationController
  before_action :set_petinfo, only: [:show, :edit, :update, :destroy]

  # GET /petinfos
  def index
    @petinfos = Petinfo.all
  end

  # GET /petinfos/1
  def show
  end

  # GET /petinfos/new
  def new
    @petinfo = Petinfo.new
  end

  # GET /petinfos/1/edit
  def edit
  end

  # POST /petinfos
  def create
    @petinfo = Petinfo.new(petinfo_params)

    if @petinfo.save
      redirect_to @petinfo, notice: 'Petinfo was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /petinfos/1
  def update
    if @petinfo.update(petinfo_params)
      redirect_to @petinfo, notice: 'Petinfo was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /petinfos/1
  def destroy
    @petinfo.destroy
    redirect_to petinfos_url, notice: 'Petinfo was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_petinfo
      @petinfo = Petinfo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def petinfo_params
      params.require(:petinfo).permit(:pet_weight, :food_weight, :water_volume)
    end
end
