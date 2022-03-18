class AddStatusToAnimals < ActiveRecord::Migration[5.2]
  def change
    add_column :animals, :status, :text
  end
end
