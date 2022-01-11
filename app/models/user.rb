class User < ApplicationRecord
	#enum  for user type
	enum user_type: {admin: 0, customer:1 }


	#validation for user

  validates :first_name, :last_name, :phone_no,  :address, :email, :password, presence: true
  # validates :first_name, :last_name, :phone_no, :bio, :address, :email, :password, presence: {message: "value Must Exists"}
	validates :first_name, :last_name, length: { minimum: 3, too_short: true}, format: {with: /\A[A-Za-z]+\z/, message: "only letters are allowed"}

	validates :phone_no, length: {is: 10, message: "Only enter 10 digits" }, numericality: {message: "only numbers allowed"} 
	validates :alt_phone_no, length: {is: 10, message: "Only enter 10 digits" }, numericality: {message: "only numbers allowed"}, allow_nil: true

	validates :bio, length: {minimum: 30, message: "is too short please type again"}
	validates :address, length: {minimum: 20, message: "contains minimum 20 letters"}

	validates :email, uniqueness: {message: "has already been taken"}, format: {with: /\A[A-Za-z0-9]+(\.[A-Za-z0-9]+)?@[A-z]+\.(com|org|in)?\z/, message: "must match the pattern (xyz@gmail.com)"}
	validates :alt_email, uniqueness: {message: "has already been taken"}, format: {with: /\A[A-Za-z0-9]+(\.[A-Za-z0-9]+)?@[A-z]+\.(com|org|in)?\z/, message: "must match the pattern (xyz@gmail.com)"}, allow_nil: true

	validates :adhaar_no, presence: {message: "required Aadhar no."}, if: :check?

	validates :adhaar_no, format: {with: /\A\d{4}\-\d{4}\-\d{4}\z/, message: "match the pattern (2311-2323-2322)"} ,allow_nil: true 

	validates :pan_no, presence: {message: "required Pan no."}, if: :check?

	validates :pan_no, format: {with: /\A[A-Z]{5}[0-9]{4}[A-Z]{1}\z/, message: "match the pattern (ACFE483DAA)"}, allow_nil: true

	validates :password, format: {with: /\A(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{6,}\z/, message: "Must contain Atleast one (A-Z), one(a-z), one special symbol(#$%^&@!$), one (0-9), minimum 6 characters " }

	validates :user_type, presence: true


	def check?
		user_type == "customer"
	end




	# #------------Rails Callback----------------


	# after_initialize do |user|
 #    puts "You have initialized an object!"
 #  end

 #  after_find do |user|
 #    puts "You have found an object!"
 #  end

 #  after_touch do |user|
 #    puts "You touch me(object)!!"
 #  end


 #  validates :first_name, presence: true

 #  before_create do 
 #  	self.first_name = first_name.capitalize unless first_name.blank?
 #  end


 #  # after_rollback :data_insert_again?, if: :rollbacks?

 #  # private 
 #  #  def data_insert_again?
 #  #  	puts "Please Re-insert the data"
 #  #  end

 #  # def rollbacks?
 #  # 	if Object.transaction.rollback
 #  # 	end
 #  # end


 #  after_rollback do 
 #  	puts "Please try again "

 #  	# elsif  users.update
 #  	# 	puts "your data Successfully updated"
 #  	# end

 #  end



 #  # after_commit do 
 #  # 	puts "your data Successfully entered"
 #  # end


 #  after_commit :commit_message?, on: :create

 #  private 
 #   def commit_message?
 #   	puts "your data Successfully entered"
 #   end

 #  after_commit :commit_update_message?, on: :update

 #  private 
 #   def commit_commit_message?
 #   	puts "your data Successfully updated"
 #   end

 #  # def commits?
 #  # 	if Object.commit
 #  # 	end
 #  # end



 #  # before_update do 
 #  # 	puts "what you want to update"
 #  # end

 
 #  after_destroy_commit do 
 #  	puts " #{values_at} Data Successfully deleted"
 #  end



end