class PagesController < ApplicationController
	def index
		@works = Work.all
		@budget = Budget.new
		@services = Service.all
		render "landing"
	end
end
