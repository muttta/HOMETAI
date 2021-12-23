class ApplicationController < ActionController::Base
  before_action :basic_auth

  private
  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASICE_AUTH_USER"] && password == ENV["BASICE_AUTH_PASSWORD"]
    end
  end
end
