class CustomersController < ApplicationController
  before_filter :login_required, except: [:show]

  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def new
    @customer = Customer.new
    @customer.locations.build
  end

  def create
    @customer = Customer.new(params[:customer].merge(admin_id: current_admin.id))
    if @customer.save
      redirect_to @customer, :notice => "Successfully created customer."
    else
    @customer.locations.build if @customer.locations.blank?
      render :action => 'new'
    end
  end

  def edit
    @customer = Customer.find(params[:id])
    @customer.locations.build if @customer.locations.blank?
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update_attributes(params[:customer])
      redirect_to @customer, :notice  => "Successfully updated customer."
    else
      @customer.locations.build if @customer.locations.blank?
      render :action => 'edit'
    end
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
    redirect_to customers_url, :notice => "Successfully destroyed customer."
  end
end
