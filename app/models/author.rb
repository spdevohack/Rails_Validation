class Author < ApplicationRecord
	has_many :books, -> {order(year_published: :desc)}
	# validates :first_name, presence: true
	validate do |author|
    errors.add :first_name, :too_plain, message: "is not cool enough"
  end

end
