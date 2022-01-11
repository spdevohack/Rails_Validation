class FlipkartsController < ApplicationController

	def index
		# @authors = Author.all
		@users = User.all

	end

	def new

		# render "form" 
		@user = User.new


	end

	def show
		@user = User.find(params[:id])
		render :show
		
	end

	def create 
		@user = User.new(user_params)
		respond_to do |format|

			if @user.save 
				format.html{redirect_to flipkarts_path(@user), notice: "User Successfully Added"}
				# flash[:success] = "User Successfully Added"
			else
				# flash[:error] = "Enter invalid datails"
				render :new
			end
		end

	

		# respond_to do |format|
		# 		format.html do
		# 			if @user.save
		# 				flash[:success] = "User Successfully Added"
		# 				redirect_to root_path
		# 			else
		# 				flash.now[:error] = "Error: Question could not be saved"

  	#           render :new
  	#         end
  	#       end

		# end

	end


		def edit
			@user = User.find(params[:id])

			render :edit
		end


		def update
			@user = User.find(params[:id])

			if @user.update(user_params)
				redirect_to flipkarts_path
			else
				render "edit"
			end

		end


		def delete

			@user = User.find(params[:id])

			@user.destroy

			redirect_to flipkarts_path, notice: "User deleted successfully"


		end




	private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :phone_no, :alt_phone_no, :email, :alt_email, :address,   :adhaar_no, :pan_no, :password, :user_type, :bio)
  end


end
