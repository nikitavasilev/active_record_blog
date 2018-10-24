class Article < ApplicationRecord
  has_and_belongs_to_many :likes
  has_many :comments
  belongs_to :user
  belongs_to :category

end
