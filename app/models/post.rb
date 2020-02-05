class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, presence: true
  validates :summary, presence: true
  validates :category, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }

  validates :category, inclusion: { in: %w(Fiction Non-Fiction),
    message: "%{value} is not a valid category." }

  validates :title, inclusion: { in: %w(Won't Believe Secret Top Guess),
    message: "%{value} is not a valid title."}

end
