class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable
  
  has_many :group_users
  has_many :groups, through: :group_users
  
  validates :name, presence: true, length: { minimum: 1, maximum: 20 }
  validates :email, presence: true
  validates :password, presence: true
end
