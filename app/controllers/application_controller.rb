class ApplicationController < ActionController::Base
  http_basic_authenticate_with :name => "frodo", :password => "thering", :if => :admin_controller?

  def admin_controller?
    self.class < ActiveAdmin::BaseController
  end
end
