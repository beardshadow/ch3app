module SessionsHelper

  #logs in a given user
  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    @current_user ||= User.find_by(id: sessrion[:user_id])
  end
end
