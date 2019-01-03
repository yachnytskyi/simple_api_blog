class Category < ApplicationRecord
  has_many :posts, dependent: :destroy

  validates_presence_of :title
end
