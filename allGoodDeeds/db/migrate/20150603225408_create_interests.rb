class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.integer :user_id
      t.integer :cause_id
    end
  end
end
