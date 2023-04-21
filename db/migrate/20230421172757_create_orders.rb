class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.string :payment_method
      t.decimal :total_price

      t.timestamps
    end
  end
end
