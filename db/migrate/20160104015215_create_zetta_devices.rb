class CreateZettaDevices < ActiveRecord::Migration[5.0]
  def change
    create_table :zetta_devices do |t|
      t.references :zettable, polymorphic: true, index: true
      
      t.timestamps
    end
  end
end
