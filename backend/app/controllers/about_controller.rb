class AboutController < ApplicationController
	def index
	end

	def create
		# render file: "#{Rails.root}/public/404.html", layout: false
		render body: "raw"
	end
end