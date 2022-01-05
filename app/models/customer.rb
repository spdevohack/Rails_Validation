class Customer < ApplicationRecord
	has_many :orders
	has_many :reviews
	validates :last_name, numericality: true

	validates :first_name, presence: true, format: {with: /\A[A-Za-z]+\z/}
	validates :email, uniqueness: { case_sensitive: false}
	# validates_each :first_name do |record, attr, value|
	# 	record.errors.add(attr, 'Must Start With Upper Case') if value =~ /\A[[:number:]]/
	# end

	
end
