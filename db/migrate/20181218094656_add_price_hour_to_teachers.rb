class AddPriceHourToTeachers < ActiveRecord::Migration[5.2]
  def change
    add_column :teachers, :price_hour, :integer
    
  end
end
