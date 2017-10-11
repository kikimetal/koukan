class Admin::AdminController < ApplicationController
  layout 'admin'
  before_action :basic_auth

  def basic_auth
    authenticate_or_request_with_http_basic do |user,pass|
      user == ENV["BASIC_AUTH"] && pass = ENV["BASIC_AUTH_PASSWORD"]
    end
  end
end
