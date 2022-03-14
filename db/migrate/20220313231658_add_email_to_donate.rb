class AddEmailToDonate < ActiveRecord::Migration[5.2]
  def change
    add_column :donates, :email, :text
  end
end
