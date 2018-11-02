module SessionsHelper
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  # @current_userが真の場合はそのままにし、偽の場合は右辺の値 User.find_by(id: session[:user_id]) を代入する
  def logged_in?
    current_user.present?
  end
end
