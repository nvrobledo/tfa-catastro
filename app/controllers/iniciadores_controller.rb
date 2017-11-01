class IniciadoresController < ApplicationController
  before_action :set_iniciador, only: [:show, :edit, :update, :destroy, :asignar]

  # GET /iniciadores
  # GET /iniciadores.json
  def index
    @iniciadores = Iniciador.all
  end

  # GET /iniciadores/1
  # GET /iniciadores/1.json
  def show
  end

  # GET /iniciadores/new
  def new 
    @iniciador = Iniciador.new
    if params[:fancybox]  
      render(layout: false)
    end
  end

  # GET /iniciadores/1/edit
  def edit
  end

  # POST /iniciadores
  # POST /iniciadores.json
  def create
    @iniciador = Iniciador.new(iniciador_params)

    respond_to do |format|
      if @iniciador.save
        format.html { redirect_to @iniciador, notice: 'Iniciador was successfully created.' }
        format.json { render :show, status: :created, location: @iniciador }
      else
        format.html { render :new }
        format.json { render json: @iniciador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /iniciadores/1
  # PATCH/PUT /iniciadores/1.json
  def update
    respond_to do |format|
      if @iniciador.update(iniciador_params)
        format.html { redirect_to @iniciador, notice: 'Iniciador was successfully updated.' }
        format.json { render :show, status: :ok, location: @iniciador }
      else
        format.html { render :edit }
        format.json { render json: @iniciador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /iniciadores/1
  # DELETE /iniciadores/1.json
  def destroy
    @iniciador.destroy
    respond_to do |format|
      format.html { redirect_to iniciadores_url, notice: 'Iniciador was successfully destroyed.' }
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
    @iniciadores = Iniciador.where('razon_social ilike ?', "%#{params[:iniciador][:razon_social]}%")
  end

  def asignar
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_iniciador
      @iniciador = Iniciador.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def iniciador_params
      params.require(:iniciador).permit(:razon_social,
                                      :tipo_documento_id,
                                      :matricula)
    end
end
