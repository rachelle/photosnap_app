class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :url
      t.string :caption
      t.string :title
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
