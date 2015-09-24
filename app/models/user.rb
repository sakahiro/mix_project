class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :avatar, AvatarUploader

  has_many :engineers, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :roles
  has_many :projects_users
  has_many :projects, through: :projects_users

  validates :name, presence: true, on: :update
  validates :school, presence: true, on: :update
  validates :age, presence: true, numericality: { only_integer: true, less_than: 30 }, on: :update
  validates :pr, presence: true, length: { maximum: 250, too_long: "500文字以内で記入して下さい" }, on: :update
  validates :avatar, presence: true, on: :update

  validates :history, numericality: { less_than: 20, allow_blank: true }
end
