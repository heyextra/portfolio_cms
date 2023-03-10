class Category < ApplicationRecord
    extend FriendlyId
    friendly_id :name, use: :slugged

    validates :name, presence: true
    
    has_many :item_categories
    has_many :items, through: :item_categories
    # you can access items for a category by calling @category.items 
 
end
