class CreateFollowers < ActiveRecord::Migration
  def change
    create_table :followers do |t|
      t.string :phone_number

      t.timestamps
    end
  end
end
