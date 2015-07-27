class AddUsersToPhotos < ActiveRecord::Migration
  def change
   remove_column :photos, :user_id, :intger
end
end
