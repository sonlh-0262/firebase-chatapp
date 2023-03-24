class ContactController < ApplicationController
	def index
		render body: params[:token]
	end
end
