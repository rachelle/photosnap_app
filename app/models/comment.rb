class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :photo

  validates :comment_content, presence: true
  validates :user_id, presence: true
  validates :photo_id, presence: true
end
