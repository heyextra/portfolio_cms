class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.admin_id = current_admin.id
    if @item.save
      redirect_to @item
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to @item
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @item = Article.find(params[:id])
    @item.destroy

    redirect_to root_path, status: :see_other
  end
  private
    def item_params
      params.require(:item).permit(:title, :description, :link, :tags, :admin_id, :category_ids => [])
    end
end
