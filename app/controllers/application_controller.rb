class ApplicationController < ActionController::Base
  before_action :authenticate

  def admin_controller?
    self.class < ActiveAdmin::BaseController
  end

  def authenticate
    if admin_controller?
      authenticate_or_request_with_http_basic do |user,pass|
        user == "Admin" && pass == "secret"
      end
    end
  end
end
