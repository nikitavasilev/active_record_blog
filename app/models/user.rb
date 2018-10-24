class User < ApplicationRecord
  has_many :articles
  has_many :comments
  has_and_belongs_to_many :likes
end
