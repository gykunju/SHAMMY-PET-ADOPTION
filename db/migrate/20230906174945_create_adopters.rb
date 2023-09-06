class CreateAdopters < ActiveRecord::Migration[7.0]
  def change
    create_table :adopters do |t|
      t.string :name
      t.string :contact_info
      t.string :email

      t.timestamps
    end
  end
end
