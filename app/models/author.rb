class Author < ApplicationRecord
	has_many :books, -> {order(year_published: :desc)}

	after_touch :log_touch

	private 
		def log_touch
			puts "Author/Books touched by someone"
		end


	# validates :first_name, presence: true
	validate do |author|
    errors.add :first_name, :too_plain, message: "is not cool enough"
  end

end
