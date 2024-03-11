class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :products, foreign_key: :user_id
  has_many :orders, foreign_key: :user_id
  has_many :reviews, foreign_key: :user_id
end
