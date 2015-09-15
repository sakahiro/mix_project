class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :avatar, AvatarUploader

  has_one :engineer, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :roles
  has_many :projects, through: :roles
  has_many :projects, through: :comments

  validates :age, 	allow_blank: true,
  									numericality: { only_integer: true, less_than: 30 }
  validates :pr, 		allow_blank: true,
  							 		length: { maximum: 250, too_long: "500文字以内で記入して下さい" }
end
