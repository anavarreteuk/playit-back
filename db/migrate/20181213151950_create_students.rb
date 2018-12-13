class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :image

      t.timestamps
    end
  end
end
