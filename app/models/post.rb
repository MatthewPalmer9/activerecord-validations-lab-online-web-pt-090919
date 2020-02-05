class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction),
    message: "%{value} is not a valid category." }

  validates :title, inclusion: { in: ["You Won't", "Believe", "Secret", "Top", "Guess"],
    message: "That is not a clickbait-y title. Try again."}

end
