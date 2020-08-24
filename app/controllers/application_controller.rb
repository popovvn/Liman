class ApplicationController < ActionController::Base
  passw = ""
  if :admin_controller?
    adminuser = Adminuser.first;
    passw = AES.decrypt(adminuser.h_passw, adminuser.salt);
  end
  http_basic_authenticate_with :name => "Admin", :password => passw, :if => :admin_controller?

  def admin_controller?
    self.class < ActiveAdmin::BaseController
  end
end
