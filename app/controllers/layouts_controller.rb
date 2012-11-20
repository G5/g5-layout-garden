class LayoutsController < ApplicationController
  def index
    @layouts = Layout.all
  end
  
  def show
    render "lib/layouts/#{params[:file_name]}.html"
  end
end
