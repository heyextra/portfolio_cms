class Item < ApplicationRecord
    validates :title, presence: true
    validates :description, presence: true
    has_many :item_categories
    has_many :categories, through: :item_categories
    belongs_to :admin

#   You can access categories for an item by calling @item.categories
#   When creating a new item, you can also associate it with one 
#   or more categories by passing in an array of category_ids 
#   @item = Item.create(name: "New Item", description: "A new item", category_ids: [1, 2, 3])

end
