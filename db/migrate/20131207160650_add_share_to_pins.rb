class AddShareToPins < ActiveRecord::Migration
  def change
    add_column :pins, :share, :array
  end
end
