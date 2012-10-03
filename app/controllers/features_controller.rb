class FeaturesController < ApplicationController
  before_filter :login_required, except: [:show]

  def index
    @features = Feature.all
  end

  def show
    @feature = Feature.find(params[:id])
  end

  def new
    @feature = Feature.new
  end

  def create
    @feature = Feature.new(params[:feature])
    if @feature.save
      redirect_to @feature, :notice => "Successfully created feature."
    else
      render :action => 'new'
    end
  end

  def edit
    @feature = Feature.find(params[:id])
  end

  def update
    @feature = Feature.find(params[:id])
    if @feature.update_attributes(params[:feature])
      redirect_to @feature, :notice  => "Successfully updated feature."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @feature = Feature.find(params[:id])
    @feature.destroy
    redirect_to features_url, :notice => "Successfully destroyed feature."
  end
end
