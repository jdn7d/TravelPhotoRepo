class CreatePhotos < ActiveRecord::Migration[6.1]
  def change
    create_table :photos do |t|
      t.string :category
      t.belongs_to :trip, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
