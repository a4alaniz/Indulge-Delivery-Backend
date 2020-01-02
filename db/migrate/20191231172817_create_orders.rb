class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :user_id
      t.string :street
      t.string :city
      t.string :zipcode
      t.string :state
      t.float :order_total
      t.text :order_items
      t.timestamps
    end
  end
end
