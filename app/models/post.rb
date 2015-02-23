class Post < ActiveRecord::Base
  belongs_to :author
  validates :title, presence: true, length: { minimum: 3 }
  validates :body, presence: true
  validates :category, presence: true

end
