class ItemsController < ApplicationController
  before_action :authenticate_admin!, :except => [:index, :show]
  include ActiveStorage::SetCurrent
  def index
    @categories = Category.all
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
    @items = @item.categories.first.items
    @categories = Category.all
  end

  def new
    @categories = Category.all
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
    @categories = Category.all
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
    @item = Item.find(params[:id])
    @item.destroy

    redirect_to root_path, status: :see_other
  end
  private
    def item_params
      params.require(:item).permit(:title, :description, :link, :tags, :admin_id, :thumbnail, :category_ids => [], :photos => [])
    end
end
