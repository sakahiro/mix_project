class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :comments
  has_many :roles
  has_many :projects, through: [:comments, :roles]
  has_one :engineer

  validates :age, 	allow_blank: true,
  									numericality: { only_integer: true, less_than: 30 }
  validates :pr, 		allow_blank: true,
  							 		length: { maximum: 250, too_long: "500文字以内で記入して下さい" }
  validates :image, allow_blank: true,
  									format: { with: /\.[jpg,jpeg,png,gif]\z/i }
end
