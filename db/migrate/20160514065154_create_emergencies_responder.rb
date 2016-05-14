class CreateEmergenciesResponder < ActiveRecord::Migration
  def change
    create_table :emergencies_responders do |t|
      t.references :emergency, index: true
      t.references :responder, index: true
      t.timestamps null: false
    end
  end
end
