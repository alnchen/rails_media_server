class Comment < ApplicationRecord
  validates :title, :body, :author_id, :sub_id, presence: true

  belongs_to :author,
  primary_key: :id,
  foreign_key: :author_id,
  class_name: 'User'

  belongs_to :sub,
  primary_key: :id,
  foreign_key: :sub_id,
  class_name: 'Sub'
end
