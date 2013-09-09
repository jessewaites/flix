class ApplicationController < ActionController::Base
  layout "application"
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_filter :authenticate_user!, except: [:index, :contact, :about, :landing, :test]

  protect_from_forgery with: :exception

  def after_sign_out_path_for(user)
    events_path
  end

  def after_sign_in_path_for(user)
    events_path
  end



end

