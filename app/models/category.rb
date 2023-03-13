class Category < ApplicationRecord
    extend FriendlyId
    friendly_id :name, use: :slugged
    belongs_to :admin

    validates :name, presence: true
    
    has_many :item_categories, :dependent => :destroy
    has_many :items, through: :item_categories
    # you can access items for a category by calling @category.items 
 
end
