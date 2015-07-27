class AddUsersToPhotos < ActiveRecord::Migration
  def change
   add_column :photos, :user_id, :intger
end
