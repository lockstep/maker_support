class AddStripeCustomerIdToPledges < ActiveRecord::Migration[5.1]
  def change
    add_column :pledges, :stripe_customer_id, :string
  end
end
