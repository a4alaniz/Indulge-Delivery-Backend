class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :price
      t.string :restaurant
      t.string :uid

      t.timestamps
    end
  end
end
