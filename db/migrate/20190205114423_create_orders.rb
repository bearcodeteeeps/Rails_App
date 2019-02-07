class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :ip_address
      t.string :string
      t.string :first_name
      t.string :last_name
      t.string :card_type
      t.string :card_expires_on
      t.string :date

      t.timestamps
    end
  end
end
