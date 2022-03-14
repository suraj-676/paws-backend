class CreateDonates < ActiveRecord::Migration[5.2]
  def change
    create_table :donates do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.text :address
      t.integer :amount

      t.timestamps
    end
  end
end
