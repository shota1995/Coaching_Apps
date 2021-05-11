class AddColumnsToCoaches < ActiveRecord::Migration[6.1]
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  
  def change
    add_column :coaches, :name, :string
    add_column :coaches, :age, :integer
    add_column :coaches, :sex, :string
    add_column :coaches, :price, :integer
    add_column :coaches, :career, :text
    add_column :coaches, :face_image, :string
    add_column :coaches, :prefecture_id, :integer
  end
end
