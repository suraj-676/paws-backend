class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string :breed
      t.string :name
      t.string :description
      t.integer :age
      t.text :image_url
      t.text :sex
      t.text :species
      t.integer :adopter_id
      t.integer :admin_id

      t.timestamps
    end
  end
end
