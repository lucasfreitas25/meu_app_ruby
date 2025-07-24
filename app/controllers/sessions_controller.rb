class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])

    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to principal_path
    else
      flash[:alert] = "Email ou senha inválidos"
      render :new
    end
  end
  def destroy
    reset_session
    redirect_to root_path, notice: "Desconectado com sucesso."
  end
end
