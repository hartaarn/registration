class CreateEventRegistrations < ActiveRecord::Migration
  def change
    create_table :event_registrations do |t|
      t.integer :registrant_id
      t.integer :event_id
      t.boolean :cancelled

      t.timestamps
    end
  end
end
