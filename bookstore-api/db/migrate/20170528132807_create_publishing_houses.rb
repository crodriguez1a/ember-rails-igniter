class CreatePublishingHouses < ActiveRecord::Migration[5.1]
  def change
    create_table :publishing_houses do |t|
      t.string :name
      t.decimal :discount, precision: 2, scale: 3

      t.timestamps
    end
  end
end
