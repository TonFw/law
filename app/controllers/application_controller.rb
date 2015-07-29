class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # before_filter :authenticate_or_token
  before_action :configure_permitted_parameters, if: :devise_controller?

  include TheRole::Controller

  protected
    # Config devise params permissions
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:locale, :name, :username, :email, :password, :password_confirmation, :remember_me) }
      devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :username, :email, :password, :remember_me) }
      devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :email, :password, :password_confirmation, :current_password) }
      # @current_user.nil? ? I18n.default_locale : I18n.locale = @current_user.locale
    end

    def after_sign_in_path_for(resource)
      propositions_url
    end

    # Validate user session and API call
    def authenticate_or_token
      return if prevent_call_sign_screen
      check_for_authenticate
      redir_if_signed
    end

    # Prevent API & LandingPage to call SignIn/SignUp screen
    def prevent_call_sign_screen
      root_url == request.original_url && !user_signed_in?
    end

    # Check if authenticated
    def check_for_authenticate
      authenticate_user!
      @current_user = current_user if @current_user.nil?
    end

    # If signed redir to not show the landing page
    def redir_if_signed
      redirect_to(propositions_path) if user_signed_in? && root_url == request.original_url
      return if root_url == request.original_url && !user_signed_in?
      return if root_url != request.original_url && user_signed_in?
      redirect_to(root_path) if !user_signed_in? && root_url != request.original_url
    end
end