class ProfileController < ApplicationController
	before_filter :authenticate_user!

	def index
		@user = current_user
	end
	def savechanges
		@user = current_user
		@user.update_attribute(:fname, params[:user][:fname])
		@user.update_attribute(:lname, params[:user][:lname])
		@user.update_attribute(:oname, params[:user][:oname])
		@user.update_attribute(:to, params[:user][:to])
		@user.update_attribute(:access, params[:user][:access])
		@user.update_attribute(:email, params[:user][:email])
		redirect_to "/mains/"
	end
end
