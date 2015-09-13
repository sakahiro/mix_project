class Engineer < ActiveRecord::Base
	belongs_to :user

	validates: history, presence: true,
											numericality: { only_integer: true, less_than: 20 }
	validates: product, presence: true,
											format: { with: URL.regexp }
end
