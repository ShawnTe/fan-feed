class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.string :stage
      t.string :phone_number

      t.timestamps
    end
  end
end
