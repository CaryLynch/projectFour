class CreateCauses < ActiveRecord::Migration
  def change
    create_table :causes do |t|
      t.string :type
    end
  end
end
