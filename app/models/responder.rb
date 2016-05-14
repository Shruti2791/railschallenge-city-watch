class Responder < ActiveRecord::Base
  enum type: [:fire, :police, :medical]
  enum status: [:available, :on_duty, :unavailable]

  # Associations
  has_many :emergencies_responders
  has_many :emergencies, through: :emergencies_responders
end
