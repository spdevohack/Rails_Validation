class User < ApplicationRecord
	#enum  for user type
	enum :user_type, [:admin, :customer]

	#validation for user

	validates :first_name, :last_name, :phone_no, :bio, :address, :email, :password, presence: {message: "value Must Exists"}
	validates :first_name, :last_name, length: { minimum: 3, too_short: true}, format: {with: /\A[A-Za-z]+\z/, message: "only letters are allowed"}

	validates :phone_no, length: {is: 10, message: "Only enter 10 digits" }, numericality: {message: "only numbers allowed"} 
	validates :alt_phone_no, length: {is: 10, message: "Only enter 10 digits" }, numericality: {message: "only numbers allowed"}, allow_nil: true

	validates :bio, length: {minimum: 30, message: "is too short please type again"}
	validates :address, length: {minimum: 20, message: "conatins minimum 20 letters"}

	validates :email, uniqueness: {message: "has already been taken"}, format: {with: /\A[A-Za-z0-9]+(\.[A-Za-z0-9]+)?@[A-z]+\.(com|org|in)?\z/, message: "must match the pattern (xyz@gmail.com)"}
	validates :alt_email, uniqueness: {message: "has already been taken"}, format: {with: /\A[A-Za-z0-9]+(\.[A-Za-z0-9]+)?@[A-z]+\.(com|org|in)?\z/, message: "must match the pattern (xyz@gmail.com)"}, allow_nil: true

	validates :adhaar_no, format: {with: /\A\d{4}\-\d{4}\-\d{4}\z/, message: "match the pattern (2311-2323-2322)"}, presence: true, if: :check?
	validates :pan_no, format: {with: /\A[A-Z]{4}[0-9]{3}[A-Z]{3}\z/, message: "match the pattern (ACFE483DAA)"}, presence: true, if: :check?
	validates :password, format: {with: /\A(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{6,}\z/, message: "Must contain Atleast one (A-Z), one(a-z), one special symbol(#$%^&@!$), one (0-9), minimum 6 characters " }

	validates :user_type, presence: true


	def check?
		user_type == "customer"
	end


end