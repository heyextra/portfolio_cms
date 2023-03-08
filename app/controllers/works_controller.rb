class WorksController < ApplicationController
  def index
    @works = Work.all
  end

  def show
    @work = Work.find(params[:id])
  end

  def new
    @work = Work.new
  end

  def create
    @work = Work.new(work_params)
    @work.admin_id = current_admin.id
    if @work.save
      redirect_to @work
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @work = Work.find(params[:id])
  end

  def update
    @work = Work.find(params[:id])
    if @work.update(work_params)
      redirect_to @work
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @work = Article.find(params[:id])
    @work.destroy

    redirect_to root_path, status: :see_other
  end
  private
    def work_params
      params.require(:work).permit(:title, :description, :link, :tags, :admin_id)
    end
end
