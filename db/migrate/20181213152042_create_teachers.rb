class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :image
      t.integer :instrument_id

      t.timestamps
    end
  end
end
