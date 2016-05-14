class Emergency < ActiveRecord::Base

  # Associations
  has_many :emergencies_responders
  has_many :responders, through: :emergencies_responders
  has_many :fire_responders, ->{ where(responders: { type: Responder.types[:fire] })}, through: :responders
  has_many :police_responders, ->{ where(responders: { type: Responder.types[:police] })}, through: :responders
  has_many :medical_responders, ->{ where(responders: { type: Responder.types[:medical] })}, through: :responders

  # Validations
  validates :code, uniqueness: true, presence: true
  validates :police_severity, :fire_severity, :medical_severity, presence: true,
    numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
