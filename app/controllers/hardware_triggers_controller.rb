class HardwareTriggersController < ApplicationController
  before_action :set_hardware_trigger, only: [:show, :edit, :update, :destroy]

  # GET /hardware_triggers
  def index
    @hardware_triggers = HardwareTrigger.all
  end

  # GET /hardware_triggers/1
  def show
  end

  # GET /hardware_triggers/new
  def new
    @hardware_trigger = HardwareTrigger.new
  end

  # GET /hardware_triggers/1/edit
  def edit
  end

  # POST /hardware_triggers
  def create
    @hardware_trigger = HardwareTrigger.new(hardware_trigger_params)

    if @hardware_trigger.save
      redirect_to @hardware_trigger, notice: 'Hardware trigger was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /hardware_triggers/1
  def update
    if @hardware_trigger.update(hardware_trigger_params)
      redirect_to @hardware_trigger, notice: 'Hardware trigger was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /hardware_triggers/1
  def destroy
    @hardware_trigger.destroy
    redirect_to hardware_triggers_url, notice: 'Hardware trigger was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hardware_trigger
      @hardware_trigger = HardwareTrigger.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def hardware_trigger_params
      params.require(:hardware_trigger).permit(:pet_weight, :food_weight, :water_volume)
    end
end
