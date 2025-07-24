class PagesController < ApplicationController
  def login
  end
  def register
  end
  def principal
    @current_user = User.find(session[:user_id]) if session[:user_id]
  end
  def tela_lista_artigos
    @current_user = User.find(session[:user_id]) if session[:user_id]
  end
end
