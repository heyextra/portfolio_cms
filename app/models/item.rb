class Item < ApplicationRecord
    validates_presence_of :title, :description
    has_many :item_categories
    has_many :categories, through: :item_categories
    belongs_to :admin
    has_rich_text :description

#   You can access categories for an item by calling @item.categories
#   When creating a new item, you can also associate it with one 
#   or more categories by passing in an array of category_ids 
#   @item = Item.create(name: "New Item", description: "A new item", category_ids: [1, 2, 3])

end
