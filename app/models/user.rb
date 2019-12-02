class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :rememberable, :validatable
  validates :username, uniqueness: true
  has_one_attached :avatar
  has_many :pets, dependent: :destroy
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
