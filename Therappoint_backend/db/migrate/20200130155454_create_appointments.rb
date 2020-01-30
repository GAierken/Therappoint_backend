class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.integer :client_id, foreign_key: true
      t.integer :provider_id, foreign_key: true
      t.string :appoint_date

      t.timestamps
    end
  end
end
