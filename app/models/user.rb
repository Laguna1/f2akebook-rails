# frozen_string_literal: true

class User < ApplicationRecord
  has_many :posts
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :fname, presence: true, length: { in: 3..15 }
  validates :lname, presence: true, length: { in: 3..15 }
end
