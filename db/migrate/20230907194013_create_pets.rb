class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.string :image
      t.integer :age
      t.text :description

      t.timestamps
    end
  end
end
