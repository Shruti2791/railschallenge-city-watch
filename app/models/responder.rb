class Responder < ActiveRecord::Base
  enum type: [:fire, :police, :medical]
  enum status: [:available, :on_duty, :unavailable]

  # Associations
  has_many :emergencies
end
