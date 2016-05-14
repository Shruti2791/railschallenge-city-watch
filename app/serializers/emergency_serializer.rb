class EmergencySerializer < ActiveModel::Serializer
  attributes :code, :police_severity, :fire_severity, :medical_severity, :message

  def message
    nil
  end
end