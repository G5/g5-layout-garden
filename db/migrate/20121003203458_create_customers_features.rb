class CreateCustomersFeatures < ActiveRecord::Migration
  def self.up
    create_table :customers_features, id: false do |t|
      t.integer :customer_id
      t.integer :feature_id
    end
  end

  def self.down
    drop_table :customers_features
  end
end
