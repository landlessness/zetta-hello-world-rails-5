class CreateZettaDeviceRegistrations < ActiveRecord::Migration[5.0]
  def change
    create_table :zetta_device_registrations do |t|
      t.references :zettable, polymorphic: true

      t.timestamps
    end
    add_index(:zetta_device_registrations, [:zettable_id, :zettable_type], unique: true, name: 'zetta_device_registry')
  end
end
