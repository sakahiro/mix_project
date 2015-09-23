class Engineer < ActiveRecord::Base
	belongs_to :user

	validates :product, format: { with: URI.regexp, allow_blank: true }
end
