class Location < ActiveRecord::Base
  attr_accessible :customer_id, :name, :corporate

  belongs_to :customer

  after_initialize :not_corporate_by_default

  scope :corporate, where(corporate: true)
  scope :not_corporate, where(corporate: false)

  private

  def not_corporate_by_default
    self.corporate = false if corporate.blank?
  end
end
