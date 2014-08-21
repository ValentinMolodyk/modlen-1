class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_guest_or_user
  def authenticate_admin_user!
    authenticate_user!
    unless current_user.admin?
      flash[:alert] = "This area is restricted to administrators only."
      redirect_to root_path
    end
  end

  def current_admin_user
    return nil if user_signed_in? && !current_user.admin?
    current_user
  end
  def set_guest_or_user
    @user = current_user
    unless @user.nil?
      return @guest = @user
    end
    @guest = Guest.find(session[:guest_id])
  rescue ActiveRecord::RecordNotFound
    @guest = Guest.create!
    session[:guest_id] = @guest.id
  end
end
