class AddOperationsRefToEmployees < ActiveRecord::Migration
  def change
    add_reference :operations, :employee, index: true, foreign_key: true
  end
end
