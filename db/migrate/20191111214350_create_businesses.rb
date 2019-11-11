class CreateBusinesses < ActiveRecord::Migration[5.2]
  def up
    create_table :businesses do |t|
      t.string 'name', :null => false
      t.string 'latitude'
      t.string 'longitude'
      t.string 'address1'
      t.string 'address2'
      t.string 'city'
      t.string 'state', :limit => 2
      t.string 'zipcode', :limit => 10
      t.string 'phone', :limit => 14
      t.string 'website'
      t.string 'category', :null => false
      t.boolean 'isFeatured', :default => false
      t.integer 'position'
      t.timestamps
    end
  end

  def down
    drop_table :businesses
  end
end
