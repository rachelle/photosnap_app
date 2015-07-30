class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.string :user_id
      t.string :photo_id

      t.timestamps null: false
    end
  end
end
