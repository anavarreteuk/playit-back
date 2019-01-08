class AddLatToTeachers < ActiveRecord::Migration[5.2]
  def change
    add_column :teachers, :latitude, :float
  end
end
