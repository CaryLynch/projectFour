class CreateCauses < ActiveRecord::Migration
  def change
    create_table :causes do |t|
      t.string :category
    end
  end
end
