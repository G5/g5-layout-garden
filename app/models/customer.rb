class Customer < ActiveRecord::Base
  attr_accessible :admin_id, :name

  belongs_to :admin
  has_many :locations
  has_and_belongs_to_many :features
end
