class ApplicationController < ActionController::Base


  http_basic_authenticate_with :name => "Admin", :password => :get_passw, :if => :admin_controller?

  def admin_controller?
    self.class < ActiveAdmin::BaseController
  end

  def get_passw
    passw = "secret"
    #if :admin_controller?
    #  adminuser = Adminuser.first
    #  if adminuser
    #    passw = AES.decrypt(adminuser.h_passw, adminuser.salt)
    #  end
    #end

  end
end
