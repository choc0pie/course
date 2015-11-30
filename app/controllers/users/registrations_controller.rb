class Users::RegistrationsController < Devise::RegistrationsController

  before_action :update_sanitized_params, if: :devise_controller?
  skip_before_filter :require_no_authentication, only: [:new, :create]

    def update_sanitized_params
       devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:email,   :password, :password_confirmation,
          :fname, :lname, :oname, :access, :to)}
    end

  def new
    super
  end

  def create
  	super
  end
end