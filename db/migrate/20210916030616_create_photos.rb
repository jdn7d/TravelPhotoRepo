class CreatePhotos < ActiveRecord::Migration[6.1]
  def change
    create_table :photos do |t|
      t.string :location
      t.string :date
      t.string :type

      t.timestamps
    end
  end
end
