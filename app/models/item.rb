class Item < ApplicationRecord
    belongs_to :admin
    validates_presence_of :title, :description
   

    has_many :item_categories, :dependent => :destroy
    has_many :categories, through: :item_categories

    has_rich_text :description
    has_many_attached :photos
    has_one_attached :thumbnail

#   You can access categories for an item by calling @item.categories
#   When creating a new item, you can also associate it with one 
#   or more categories by passing in an array of category_ids 
#   @item = Item.create(name: "New Item", description: "A new item", category_ids: [1, 2, 3])

end
