class PortalController < ApplicationController
    before_action :authenticate_admin!
    include ActiveStorage::SetCurrent
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
  
  
  
    def show_item
      @categories = Category.all.includes(:admin)
      @item = Item.includes(:admin).find(params[:id])
    end

    def show_categories
          @categories = Category.all.includes(:admin)
      end
end
