class CreateAdoptions < ActiveRecord::Migration[7.0]
  def change
    create_table :adoptions do |t|
      t.string :location
      t.integer :contact
      t.string :reason
      t.integer :user_id
      t.integer :pet_id

      t.timestamps
    end
  end
end
