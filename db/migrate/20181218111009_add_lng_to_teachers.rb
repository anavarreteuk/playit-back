class AddLngToTeachers < ActiveRecord::Migration[5.2]
  def change
    add_column :teachers, :longitude, :float
  end
end
