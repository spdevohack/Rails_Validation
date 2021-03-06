class Book < ApplicationRecord
	belongs_to :supplier
	belongs_to :author, touch: true

	# rails callback
	
	after_touch do 
		puts "BOOK was touch by someone"
	end

	has_many :reviews
	has_and_belongs_to_many :orders

	scope :in_print, -> {where(out_of_print: false)}
	scope :out_of_print, -> {where(out_of_print: true)}
	scope :old, -> { where('year_published < ?', 50.years.ago)}
	scope :out_of_print_and_expensive, -> {out_of_print.where('price > 500')}
	scope :costs_more_than, -> (amount) {where('price > ?', amount) }

	# validates :isbn, format: { with: /^"([A-Z0-9]+\-*)+[A-Z0-9]"$/, message: "Not Match the pattern", :multiline => true}
	
	validates :title, length: { maximum: 50}

end
