class CreateAdminUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :admin_users do |t|
      t.string "first_name", :string, :limit => 25
      t.string "last_name", :limit => 50
      t.string "email", :default => '', :null => false, :limit => 100
      t.string "username", :limit => 25
      t.string "password_digest"
      t.string "role", :limit => 25
      t.timestamps
    end
  end
end
