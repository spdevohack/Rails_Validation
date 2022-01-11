class Order < ApplicationRecord
	belongs_to :customer
	has_and_belongs_to_many :books

	enum :status, [:shipped, :being_packed, :complete, :cancelled]

	scope :created_before, -> (time) {where('created_at < ?', time)}
end