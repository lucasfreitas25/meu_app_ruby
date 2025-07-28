require 'news-api'


class PagesController < ApplicationController
  def login
  end
  def register
  end 
  def principal
    
    @current_user = User.find(session[:user_id]) if session[:user_id]
    newsapi = News.new(Rails.configuration.news_api_key)
    @top_headlines = []
    begin
      termo = params[:q].presence || "tecnologia"
      newsapi = News.new(Rails.configuration.news_api_key)
      @top_headlines = newsapi.get_top_headlines(q: termo, language: 'en', country: 'us')
    rescue => e
      Rails.logger.error("Erro ao buscar notícias: #{e.message}")
      @top_headlines = []
    end
  end

  def tela_lista_artigos
    @current_user = User.find(session[:user_id]) if session[:user_id]
    @artigos = @current_user.artigos
  end

  def salvar_artigo
    @current_user = User.find(session[:user_id])
    artigo = @current_user.artigos.new(
      nome_artigo: params[:artigo][:nome_artigo],
      fonte: params[:artigo][:fonte],
      link: params[:artigo][:link]
    )

    if artigo.save
      render json: { status: "ok" }
    else
      render json: { status: "erro", erros: artigo.errors.full_messages }, status: 422
    end
  end
  
  def remover_artigo
    @current_user = User.find(session[:user_id])
    @artigo = @current_user.artigos.find(params[:id])
    
    if @artigo.destroy
      respond_to do |format|
        format.turbo_stream
        format.json { render json: { status: "ok" } }
        format.html { redirect_to telas_lista_artigos_path, notice: "Artigo removido com sucesso." }
      end
    else
      render json: { status: "erro", erros: @artigo.errors.full_messages }, status: 422
    end
  end
end
