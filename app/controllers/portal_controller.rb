class PortalController < ApplicationController
    before_action :authenticate_admin!
    def index
    
    end


    def items
      @items = Item.all.includes(:admin)
    end
  
    def categories
      @categories = Category.all.includes(:admin)
    end
  
    def users; end
  
  
    def show_item
      @item = Item.includes(:admin).find(params[:id])
    end

    def show_categories
        @categories = Category.all
      end
end
