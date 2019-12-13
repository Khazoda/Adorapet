class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :rememberable, :validatable
  validates :username, uniqueness: true
  # one avatar to one user
  has_one_attached :avatar
  # one user to many pets. when user is destroyed, destroy all user's pets too from db
  has_many :pets, dependent: :destroy
  # devise logic overrides
  def will_save_change_to_email?
    false
  end
  def email_required?
    false
  end
  def email_changed?
    false
  end
end
