class AddColumnsToCoaches < ActiveRecord::Migration[6.1]
  def change
    add_column :coaches, :name, :string
    
  end
end
