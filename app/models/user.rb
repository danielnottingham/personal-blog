class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, :surname, presence: true
  has_one_attached :avatar
  has_many :articles

  def full_name
    [name, surname].select(&:present?).join(' ').titleize
  end
end
