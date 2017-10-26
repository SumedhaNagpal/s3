class HomeController < ApplicationController
	before_action :authenticate_user!
	def index
		# @phase_one_count = Container.where(:phase => 1).count
		# @phase_two_count = Container.where(:phase => 2).count
		@phase_one = Container.where(:phase => 1)
		@phase_two = Container.where(:phase => 2)
	end

	def phase_one
	end

	def phase_two
	end

end
