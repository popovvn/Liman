class ApplicationController < ActionController::Base

  before_action :authenticate

  def admin_controller?
    self.class < ActiveAdmin::BaseController
  end

  def authenticate
    if admin_controller?
      authenticate_or_request_with_http_basic do |user,pass|
        adminuser = Adminuser.first
        if adminuser
          passw = AES.decrypt(adminuser.h_passw, adminuser.salt)
          user == "Admin" && pass == passw
        else
          false
        end
      end
    end
  end
end
