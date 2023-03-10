class CategoriesController < ApplicationController
    def index
        @categories = Category.all
      end
    
      def show
        @category = Category.friendly.find(params[:id])
      end
    
      def new
        @category = Category.new
      end
    
      def create
        @category = Category.new(category_params)
        @category.admin_id = current_admin.id
        if @category.save
          redirect_to @category
        else
          render :new, status: :unprocessable_entity
        end
      end
    
      def edit
        @category = Category.friendly.find(params[:id])
      end
    
      def update
        @category = Category.friendly.find(params[:id])
        if @category.update(category_params)
          redirect_to @category
        else
          render :edit, status: :unprocessable_entity
        end
      end
    
      def destroy
        @category = Category.friendly.find(params[:id])
        @category.destroy
    
        redirect_to portal_path, status: :see_other
      end
      private
        def category_params
          params.require(:category).permit(:name)
        end
end
