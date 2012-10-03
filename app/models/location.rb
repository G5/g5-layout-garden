class Location < ActiveRecord::Base
  attr_accessible :customer_id, :name, :corporate

  belongs_to :customer
end
