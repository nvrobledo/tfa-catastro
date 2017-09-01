class VisadoresController < ApplicationController
  before_action :set_visador, only: [:show, :edit, :update, :destroy, :asignar]

  # GET /visadores
  # GET /visadores.json
  def index
    @visadores = Visador.all
  end

  # GET /visadores/1
  # GET /visadores/1.json
  def show
  end

  # GET /visadores/new
  def new
    @visador = Visador.new
    if params[:fancybox]  
      render(layout: false)
    end
  end

  # GET /visadores/1/edit
  def edit
  end

  # POST /visadores
  # POST /visadores.json
  def create
    @visador = Visador.new(visador_params)

    respond_to do |format|
      if @visador.save
        format.html { redirect_to @visador, notice: 'Visador was successfully created.' }
        format.json { render :show, status: :created, location: @visador }
      else
        format.html { render :new }
        format.json { render json: @visador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visadores/1
  # PATCH/PUT /visadores/1.json
  def update
    respond_to do |format|
      if @visador.update(visador_params)
        format.html { redirect_to @visador, notice: 'Visador was successfully updated.' }
        format.json { render :show, status: :ok, location: @visador }
      else
        format.html { render :edit }
        format.json { render json: @visador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visadores/1
  # DELETE /visadores/1.json
  def destroy
    @visador.destroy
    respond_to do |format|
      format.html { redirect_to visadores_url, notice: 'Visador was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  def busqueda
    #respond_to do |format|
    #  format.html { render(layout: false) }
    #end
    render(layout: false)
  end

 
  def resultado_busqueda
    @visadores = Visador.where('apellido ilike ?', "%#{params[:visador][:apellido]}%")
  end

  def asignar
    
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visador
      @visador = Visador.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def visador_params
      params.require(:visador).permit(:apellido, :nombre, :tipos_documento, :documento, :matricula, :zona)
    end
end
