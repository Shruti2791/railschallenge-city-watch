class EmergenciesController < ApplicationController

  def create
    @emergency = Emergency.new(emergency_params)
    if @emergency.save!
      render status: 201, json: @emergency, serializer: EmergencySerializer
    else
      render status: 422, json: { 'message' => @emergency.errors }
    end
  end

  def emergency_params
    params.require(:emergency).permit(:code, :police_severity, :fire_severity, :medical_severity)
  end
end
