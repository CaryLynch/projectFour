class CreateUsersDeeds < ActiveRecord::Migration
  def change
    create_table :users_deeds do |t|
      t.integer :user_id
      t.integer :deed_id
    end
  end
end
