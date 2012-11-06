class FeedController < ApplicationController
  def index
    @customers = Customer.order('created_at desc')
  end
end
