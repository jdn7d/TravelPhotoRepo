class CreateTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t|
      t.string :location
      t.string :date
      t.boolean :private
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
