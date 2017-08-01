class CreateMakers < ActiveRecord::Migration[5.1]
  def change
    create_table :makers do |t|
      t.string :first_name
      t.string :last_name
      t.string :subdomain

      t.timestamps
    end
  end
end
