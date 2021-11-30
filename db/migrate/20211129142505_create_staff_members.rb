class CreateStaffMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :staff_members do |t|
      t.string :email, null: false
      t.string :family_name, null: false
      t.string :given_name, null: false
      t.string :family_name_kana, null: false
      t.string :given_name_kana, null: false
      t.string :hashed_password
      t.date :start_data, null: false
      t.date :start_data
      t.boolean :suspended, null: false, dafault: false

      t.timestamps
    end

    add_index :staff_members, "LOWER(email)", unique: true
    add_index :staff_members, [ :family_name_kana, :given_name_kana]
  end
end
