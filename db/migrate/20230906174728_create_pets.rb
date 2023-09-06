class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.integer :age
      t.string :image
      t.text :description
      t.references :adopter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
