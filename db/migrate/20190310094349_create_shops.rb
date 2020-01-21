class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :name, null: false, length: 50
      t.string :adress, null: false, length: 100
      t.string :opentime, length: 50
      t.string :closetime, length: 50
      t.string :regularholiday, length: 50
      t.text :description, null: false, length: 1000
      t.string :hp, length: 1000

      t.timestamps
    end
  end
end
