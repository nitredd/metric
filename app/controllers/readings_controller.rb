class ReadingsController < ApplicationController
  before_action :set_meter

  def create
    puts 'EEEeee'
    @meter.readings.create! params.required(:reading).permit([:value])
    redirect_to @meter
  end

  def destroy
    @meter.readings.find(params[:id]).destroy
    redirect_to @meter, :notice => 'Reading Deleted'
  end

  private
  def set_meter
    @meter = Meter.find(params[:meter_id])
  end
end
