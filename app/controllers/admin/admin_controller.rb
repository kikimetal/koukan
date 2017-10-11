class Admin::AdminController < ApplicationController
  layout 'admin'
  before_action :authenticate_admin_user!

  def authenticate_admin_user!
    #return redirect_to :root unless logged_in? && current_user.admin?
  end
end
