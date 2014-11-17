class Foo::BarsController < ApplicationController
  before_action :set_foo_bar, only: [:show, :edit, :update, :destroy]

  # GET /foo/bars
  # GET /foo/bars.json
  def index
    @foo_bars = Foo::Bar.all
  end

  # GET /foo/bars/1
  # GET /foo/bars/1.json
  def show
  end

  # GET /foo/bars/new
  def new
    @foo_bar = Foo::Bar.new
  end

  # GET /foo/bars/1/edit
  def edit
  end

  # POST /foo/bars
  # POST /foo/bars.json
  def create
    @foo_bar = Foo::Bar.new(foo_bar_params)

    respond_to do |format|
      if @foo_bar.save
        format.html { redirect_to @foo_bar, notice: 'Bar was successfully created.' }
        format.json { render :show, status: :created, location: @foo_bar }
      else
        format.html { render :new }
        format.json { render json: @foo_bar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo/bars/1
  # PATCH/PUT /foo/bars/1.json
  def update
    respond_to do |format|
      if @foo_bar.update(foo_bar_params)
        format.html { redirect_to @foo_bar, notice: 'Bar was successfully updated.' }
        format.json { render :show, status: :ok, location: @foo_bar }
      else
        format.html { render :edit }
        format.json { render json: @foo_bar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo/bars/1
  # DELETE /foo/bars/1.json
  def destroy
    @foo_bar.destroy
    respond_to do |format|
      format.html { redirect_to foo_bars_url, notice: 'Bar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo_bar
      @foo_bar = Foo::Bar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def foo_bar_params
      params.require(:foo_bar).permit(:name, :surname, :phone)
    end
end
