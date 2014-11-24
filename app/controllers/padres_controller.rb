class PadresController < ApplicationController
  def index
    @padre = Padre.all
  end

  def show
    @padre = Padre.find(params[:id])
  end

  def new
    @padre = Padre.new
  end

  def edit
     @padre = Padre.find(params[:id])


  end

  def create
    @padre = Padre.create padres_params
      if @padre.save
        flash[:notice] = "Se ha creado correctamente"
        redirect_to padres_path
      else
        flash[:error] = "No se ha podido crear el usuario. Revisa los campos"
        render 'new'
      end
  end

  def update
    @padre = Padre.find(params[:id])
    respond_to do |format|
      if @padre.update(padres_params)
        format.html { redirect_to padre_path, notice: 'Las modificaciones han sido guardadas.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
  end

  protected
      def padres_params
        params.require(:padre).permit(:name, :surname, :phone)
      end     
    
end
