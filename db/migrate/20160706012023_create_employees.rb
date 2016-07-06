class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :nombre, null: false
      t.string :email

      t.timestamps null: false
    end
  end
end
