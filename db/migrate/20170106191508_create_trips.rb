class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
