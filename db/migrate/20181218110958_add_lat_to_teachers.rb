class AddLatToTeachers < ActiveRecord::Migration[5.2]
  def change
    add_column :teachers, :lat, :decimal
  end
end
