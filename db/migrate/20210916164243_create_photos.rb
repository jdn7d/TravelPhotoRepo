class CreatePhotos < ActiveRecord::Migration[6.1]
  def change
    create_table :photos do |t|
      t.string :type
      t.string :link

      t.timestamps
    end
  end
end
