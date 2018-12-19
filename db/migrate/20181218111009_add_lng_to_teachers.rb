class AddLngToTeachers < ActiveRecord::Migration[5.2]
  def change
    add_column :teachers, :lng, :decimal
  end
end
