class CreateResponder < ActiveRecord::Migration
  def change
    create_table :responders do |t|
      t.string  :name
      t.integer :type
      t.integer  :capacity
      t.integer :status
      t.references :emergency, index: true
      t.timestamps null: false
    end
  end
end
