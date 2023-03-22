class PortalController < ApplicationController
    before_action :authenticate_admin!
    def index
      @categories = Category.all.includes(:admin)
    end


    def items
      @categories = Category.all.includes(:admin)
      @items = Item.all.includes(:admin)
    end
  
    def categories
      @categories = Category.all.includes(:admin)
    end
  
    def users; end
  
  
    def show_item
      @categories = Category.all.includes(:admin)
      @item = Item.includes(:admin).find(params[:id])
    end

    def show_categories
          @categories = Category.all.includes(:admin)
      end
end
