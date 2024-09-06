class AddDineroAndDeudaToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :dinero, :decimal, default: 0.0
    add_column :users, :deuda, :decimal, default: 0.0
  end
end
