class CreateOperations < ActiveRecord::Migration
  def change
    create_table :operations do |t|
      t.string :descripcion, null: false

      t.timestamps null: false
    end
  end
end
