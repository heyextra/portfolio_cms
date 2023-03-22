class PagesController < ApplicationController
    def show
      @categories = Category.all
        render template: "pages/#{params[:page]}"
      end
end
