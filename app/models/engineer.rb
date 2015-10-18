class Engineer < ActiveRecord::Base
	belongs_to :user

	acts_as_taggable_on :languages

	validates :history, numericality: { less_than: 20, allow_blank: true }
	validates :product1, format: { with: URI.regexp, allow_blank: true }
	validates :product2, format: { with: URI.regexp, allow_blank: true }
end
