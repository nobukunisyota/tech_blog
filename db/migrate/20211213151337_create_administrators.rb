class CreateAdministrators < ActiveRecord::Migration[6.1]
  def change
    create_table :administrators do |t|
      t.string :email, null: false
      t.string :hashed_password
      t.boolean :suspended, null: false, dafault: false

      t.timestamps
    end
    add_index :administrators, [:email], unique: true
  end
end