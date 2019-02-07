class AddTotalAmountCentsToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :total_amount_cents, :integer
  end
end
