class Item < ApplicationRecord
  belongs_to :user
  has_many :likes
  has_one :order

  #ここから出品ページでのアソシエーション
  has_many :items_categories
  has_many :categories, through: :items_categories
  belongs_to :size
  accepts_nested_attributes_for :size
  belongs_to :brand
  accepts_nested_attributes_for :brand
  has_many :photos
  accepts_nested_attributes_for :photos

  
end
