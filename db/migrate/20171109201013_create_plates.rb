class CreatePlates < ActiveRecord::Migration[5.0]
  def change
    create_table :plates do |t|
      t.string :nombre
      t.decimal :precio

      t.timestamps
    end
  end
end
