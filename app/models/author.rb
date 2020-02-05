class Author < ActiveRecord::Base
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length: { minimum: 4 }
end
