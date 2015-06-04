class CreateDeeds < ActiveRecord::Migration
  def change
    create_table :deeds do |t|
      t.integer :organization_id
      t.string :type
      t.string :description
    end
  end
end
