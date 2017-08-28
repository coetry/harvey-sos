class AddPhoneToEmergencies < ActiveRecord::Migration[5.1]
  def change
    add_column :emergencies, :phone, :string
  end
end
