class CreatePhotocells < ActiveRecord::Migration[5.0]
  def change
    create_table :photocells do |t|
      t.string :intensity

      t.timestamps
    end
  end
end
