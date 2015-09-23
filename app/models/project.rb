class Project < ActiveRecord::Base
	mount_uploader :image, ImageUploader

	has_many :comments, dependent: :destroy
	has_many :roles, dependent: :destroy
	has_and_belongs_to_many :users

	validates :title, 	presence: true
	validates :explanation, presence: true,
											length: { maximum: 250, too_long: "250文字以内で週力してください"}
	validates :image, 	presence: true
	validates :wanted,	presence: true,
											length: { maximum: 250, too_long: "250文字以内で週力してください"}
end
