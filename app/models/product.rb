class Product < ApplicationRecord
    has_many :reviews, foreign_key: :product_id
    has_many :categories
    belongs_to :user
end
