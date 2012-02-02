class CreateRegistrants < ActiveRecord::Migration
  def change
    create_table :registrants do |t|
      t.string :firstname
      t.string :lastname
      t.string :gender
      t.integer :age
      t.string :phone_number
      t.string :email
      t.text :comments
      t.text :heard_about

      t.timestamps
    end
  end
end
