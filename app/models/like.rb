class Like < ApplicationRecord
  has_and_belongs_to_many :articles
  has_and_belongs_to_many :users

end
