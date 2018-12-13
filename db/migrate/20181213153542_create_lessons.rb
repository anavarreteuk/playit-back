class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.integer :teacher_id
      t.integer :student_id
      t.string :date
      t.string :time
      t.string :duration

      t.timestamps
    end
  end
end
