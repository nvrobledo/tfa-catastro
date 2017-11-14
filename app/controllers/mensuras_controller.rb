class MensurasController < ApplicationController
  before_action :set_mensura, only: [:show, :edit, :update, :destroy, :asignar]

  # GET /mensuras
  # GET /mensuras.json
  def index
    @mensuras = Mensura.paginate(page: params[:page], per_page:10).all.order(fecha_registracion: :desc)
    respond_to do |format|
      format.html
      format.json
      format.pdf {render template: 'mensuras/reporte', pdf:'reporte'}
    end
  end

  # GET /mensuras/1
  # GET /mensuras/1.json
  def show
    respond_to do |format|
      format.html
      format.json
      format.pdf {render layout: 'pdfs', template: 'mensuras/reporte', pdf:'reporte'}
    end
  end

  # GET /mensuras/new
  def new
    @mensura = Mensura.new
    if params[:fancybox]  
      render(layout: false)
    end
  end

  # GET /mensuras/1/edit
  def edit
    @expediente = @mensura.expediente
  end

  # POST /mensuras
  # POST /mensuras.json
  def create
    @mensura = Mensura.new(mensura_params)
    
    respond_to do |format|
      if @mensura.save
        format.html { redirect_to edit_mensura_path @mensura, notice: 'El registro se almacenó correctamente' }
        format.json { render :show, status: :created, location: @mensura }
        format.js { render(template: 'asignar') }
      else
        format.html { render :new }
        format.json { render json: @mensura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mensuras/1
  # PATCH/PUT /mensuras/1.json
  def update
    respond_to do |format|
      if @mensura.update(mensura_params)
        format.html { redirect_to mensura_path(@mensura), notice: 'El registro se actualizó correctamente' }
        format.json { render :show, status: :ok, location: @mensura }
      else
        format.html { render :edit }
        format.json { render json: @mensura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mensuras/1
  # DELETE /mensuras/1.json
  def destroy
    @mensura.destroy
    respond_to do |format|
      format.html { redirect_to mensuras_url, notice: 'El registro se eliminó correctamente' }
      format.json { head :no_content }
    end
  end

  def reporte
    respond_to do |format|
      format.html {render(layout: pdfs)}
      format.json
      format.pdf {render layout: 'pdfs', template: 'mensuras/reporte', pdf:'reporte'}
    end
  end

  def busqueda
    #respond_to do |format|
    #  format.html { render(layout: false) }
    #end
    render(layout: false)
  end

 
  def resultado_busqueda
    @mensuras = Mensura.where('mensura_nro::text ilike ?', "%#{params[:mensuras][:numero]}%")
  end

  def asignar
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mensura
      @mensura = Mensura.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mensura_params
      params.require(:mensura).permit(:mensura_nro,
                                      :mensura_letra,
                                      :objeto_id,
                                      :localidad_id,
                                      :jurisdiccion_id,
                                      :rectificacion_id,
                                      :iniciador_id,
                                      :fecha_operaciones,
                                      :fecha_registracion,
                                      :expte_id,
                                      :visador_id,
                                      :calle,
                                      :propietario)
    end
end
