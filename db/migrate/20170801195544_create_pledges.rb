class CreatePledges < ActiveRecord::Migration[5.1]
  def change
    create_table :pledges do |t|
      t.references :user, foreign_key: true
      t.references :maker, foreign_key: true
      t.integer :dollars_per_podcast

      t.timestamps
    end
  end
end
