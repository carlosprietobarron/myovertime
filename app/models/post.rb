class Post < ApplicationRecord
  validates_presence_of :date, :rationale

  belongs_to :user, class_name: 'User', foreign_key: "user_id"
end
