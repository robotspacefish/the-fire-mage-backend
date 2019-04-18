class Api::V1::GameSessionsController < ApplicationController

  # def index
  # end

  def show
    find_game_session
    render json: @game_session
  end

  # def new
  # end

  def create
    @game_session = GameSession.new
    if @game_session.save
      render json: @game_session
    end
  end

  # def edit
  # end

  def update
    find_game_session
    @game_session.update(game_session_params)
    if @game_session.save
      render json: @game_session
    end
  end

  def destroy
  end


  private


  # def game_session_params
  #   params.require(:game_session).permit!
  # end

  def find_game_session
    @game_session = GameSession.find(params[:id])
  end


end