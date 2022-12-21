class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.date :date
      t.string :place
      t.belongs_to :doctor, index: true
      t.belongs_to :patient, index: true

      t.timestamps
    end
  end
end
