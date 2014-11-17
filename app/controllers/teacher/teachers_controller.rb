class Teacher::TeachersController < ApplicationController
	before_action :get_teacher

	def index
		#render :template => 'index'
	end

    def show
    	#render :template => 'show'
    end

	private

    # load teacher instance variables
	def get_teacher
		if action_name == 'index'
		    @teachers = Teacher.all
	    else
	    	@teacher = Teacher.find_by_id(params[:id]) || Teacher.new
	    end
	end
end
