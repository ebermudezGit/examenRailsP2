class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :item
      t.string :serie

      t.timestamps null: false
    end
  end
end
