class AddInventariosRefToOperations < ActiveRecord::Migration
  def change
    add_reference :operations, :inventario, index: true, foreign_key: true
  end
end
