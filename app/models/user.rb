class User < ApplicationRecord
  has_many :bookings
  has_many :owned_planets, class_name: "Planet", foreign_key: :owner_id
  has_many :booked_planets, through: :bookings, source: :planet
  validates :username , uniqueness: true, presence: true
  validates :email , uniqueness: true , presence: true
  # Ex:- scope :active, -> {where(:active => true)}
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
