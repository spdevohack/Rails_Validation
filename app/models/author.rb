class Author < ApplicationRecord
	has_many :books, -> {order(year_published: :desc)}
	validates :first_name, presence: true
end
