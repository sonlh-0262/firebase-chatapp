class ChatController < ApplicationController
  def index
  	@token = params[:token]
  end
end
