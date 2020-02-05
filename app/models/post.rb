class Post < ActiveRecord::Base
  validates :post, presence: true
  validates :content, length: { minimum: 250 }
end
