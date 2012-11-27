class StaticAssetsController < ApplicationController
  def index
    @static_assets = StaticAsset.all
  end
  
  def show
    render "lib/layouts/#{params[:file_name]}.html", layout: false
  end
end
