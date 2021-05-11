class Item < ApplicationRecord
  # この2行を追加
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture

end