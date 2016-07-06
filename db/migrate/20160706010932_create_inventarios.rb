class CreateInventarios < ActiveRecord::Migration
  def change
    create_table :inventarios do |t|
      t.string :item
      t.string :serie, null: false
      t.string :descripcion
      t.integer :tamanio

      t.timestamps null: false
    end
    add_index :inventarios, :serie, unique: true
  end
end
