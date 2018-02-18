class SessionsController < ApplicationController
  def create
    user = User.find_or_crete_from_auth_hash(request.env['omniauth.auth'])
    sessino[:user_id] = user.id
    redirect_to root_path, notice: "ログインしました"
  end

  def destroy
    reset_session
    redirect_to root_path, notice: "ログアウトしました"
  end
end
