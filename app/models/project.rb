class Project < ActiveRecord::Base
	has_many :comments
	has_many :roles
	has_many :user, through: [:comments, :roles]

	validates :title, 	presence: true
	validates :explain, presence: true,
											length: { maximum: 250, too_long: "250文字以内で週力してください"}
	validates :image, 	presence: true,
											format: { with: /\.[jpg,jpeg,png,gif]\z/i }
	validates :wanted,	presence: true,
											length: { maximum: 250, too_long: "250文字以内で週力してください"}
end
