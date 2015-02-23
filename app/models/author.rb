class Author < ActiveRecord::Base
  validates :first_name, presence: true, length: {in: 4..20} 
  validates :last_name, presence: true, length: {in: 4..20} 
  validates :age, presence: true, numericality: true
  has_many :posts, dependent: :destroy
end
