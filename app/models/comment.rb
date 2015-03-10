class Comment < ActiveRecord::Base
  validates :commentable_id, :body, :user_id, presence: true
  validates :commentable_type, presence: true, inclusion: ['contact', 'user']

  belongs_to :commenter, class_name: :User, foreign_key: :user_id

  belongs_to :commentable, polymorphic: true
end
