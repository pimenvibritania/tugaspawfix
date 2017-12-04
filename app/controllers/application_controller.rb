class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

helper_method :current_admin, :logged_in?
def current_admin
  	@current_admin ||= Admin.find(session[:admin_id]) if session[:admin_id]
	
end

def logged_in?
	!!current_admin
end
end