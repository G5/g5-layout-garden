class Customer < ActiveRecord::Base
  attr_accessible :admin_id, :name, :locations_attributes, :feature_ids

  belongs_to :admin
  has_many :locations
  has_and_belongs_to_many :features

  accepts_nested_attributes_for :locations, allow_destroy: true
end
