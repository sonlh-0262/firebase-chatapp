class TokenController < ApplicationController
	def create
		uid = ('a'..'z').to_a.shuffle.join
		@custom_token = CreateToken.create_custom_token(uid)
		render json: { token: @custom_token }
	end
end
