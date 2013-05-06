class AddAgeToPollito < ActiveRecord::Migration
  def change
    add_column :pollitos, :age, 
      :integer
  end
end
