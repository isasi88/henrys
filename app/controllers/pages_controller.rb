class PagesController < ApplicationController
	def index
		@works = Work.all
		@budget = Budget.new
		@services = Service.all
		render "landing"
	end

	def about
		@budget = Budget.new
		render "porque-henrys"
	end
end
