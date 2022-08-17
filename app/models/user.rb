class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :wares, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :booked_wares, through: :bookings
  has_one_attached :photo
end
