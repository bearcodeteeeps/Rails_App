class AddExpressTokenToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :express_token, :string
  end
end
