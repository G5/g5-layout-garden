class FeedController < ApplicationController
  def index
    @customers = Customer.all
  end
end
