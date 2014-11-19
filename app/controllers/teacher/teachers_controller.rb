class Teacher::TeachersController < ApplicationController
	before_action :get_teacher

	def index
		#render :template => 'index'
	end

    def show
    	#render :template => 'show'
    end

    def new
    	@teacher = Teacher.new
        #@teacher = Teacher::Teacher.new
    end

    def create
    	@teacher = Teacher.create teachers_params
    	if @teacher.save
    		flash[:notice] = "Se ha creado correctamente"
    		redirect_to teacher_teachers_path
    	else
    		flash[:error] = "No se ha podido crear el usuario. Revisa los campos"
    		render 'new'
    	end

    end

    def edit
        @teacher = Teacher.find(params[:id])
    end

    def update
        respond_to do |format|
      if @teacher.update(teachers_params)
        format.html { redirect_to teacher_teachers_path, notice: 'Las modificaciones han sido guardadas.' }
        format.json { render :show, status: :ok, location: @teacher }
      else
        format.html { render :edit }
        format.json { render json: @teacher.errors, status: :unprocessable_entity }
        end
    end
  end

    protected
    	def teachers_params
    		params.require(:teacher).permit(:name, :surname, :phone)
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
