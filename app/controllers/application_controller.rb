class ApplicationController < ActionController::Base
  before_action :basic_auth
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    if current_user
      flash[:notice] = "ログインに成功しました"
      users_path(current_user.id)
    else
      flash[:notice] = "新規登録画面に移動します"
      new_user_session
    end
  end

  
  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :birthday, :email] )
    devise_parameter_sanitizer.permit(:sign_in, keys: [:nickname] )
  end

end
