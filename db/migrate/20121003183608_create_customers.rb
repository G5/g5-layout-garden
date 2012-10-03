class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers do |t|
      t.integer :admin_id
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :customers
  end
end
