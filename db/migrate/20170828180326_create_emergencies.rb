class CreateEmergencies < ActiveRecord::Migration[5.1]
  def change
    create_table :emergencies do |t|
      t.string :first_name
      t.string :last_name
      t.string :location
      t.integer :number_of_adults
      t.integer :number_of_children
      t.integer :number_of_pets
      t.text :notes

      t.timestamps
    end
  end
end
