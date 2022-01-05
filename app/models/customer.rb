class Customer < ApplicationRecord
	has_many :orders
	has_many :reviews

	validates :first_name, presence: true
	validates :email, uniqueness: { case_sensitive: false}
	validates_each :first_name, :last_name do |record, attr, value|
		record.errors.add(attr, 'Must Start With Upper Case') if value =~ /\A[[:lower:]]/
	end
	
	
end
