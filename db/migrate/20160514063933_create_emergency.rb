class CreateEmergency < ActiveRecord::Migration
  def change
    create_table :emergencies do |t|
      t.text :code, unique: true
      t.integer :fire_severity
      t.integer :police_severity
      t.integer :medical_severity
      t.datetime :resolved_at
      t.timestamps null: false
    end
  end
end
