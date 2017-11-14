class PropiedadesController < ApplicationController
  before_action :set_propiedad, only: [:show, :edit, :update, :destroy, :asignar, :mensuras]

  # GET /propiedades
  # GET /propiedades.json
  def index
    @propiedades = Propiedad.paginate(page: params[:page], per_page:10).all.order(fecha_vigencia: :desc)
    if params[:partida]
      @propiedades = @propiedades.where('partida::text ilike ?', "%#{params[:partida]}%")
    end
  end

  # GET /propiedades/1
  # GET /propiedades/1.json
  def show
  end

  # GET /propiedades/new
  def new
    @propiedad = Propiedad.new
  end

  # GET /propiedades/1/edit
  def edit
  end

  # POST /propiedades
  # POST /propiedades.json
  def create
    @propiedad = Propiedad.new(propiedad_params)

    respond_to do |format|
      if @propiedad.save
        format.html { redirect_to @propiedad, notice: 'Propiedad creada correctamente' }
        format.json { render :show, status: :created, location: @propiedad }
      else
        format.html { render :new }
        format.json { render json: @propiedad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /propiedades/1
  # PATCH/PUT /propiedades/1.json
  def update
    respond_to do |format|
      if @propiedad.update(propiedad_params)
        if params[:mensura_id].present?
          mensura = Mensura.find(params[:mensura_id])
          mensura.update_attributes(parcela_id: @propiedad.parcela.id)
        end
        format.html { redirect_to @propiedad, notice: 'Propiedad guardada correctamente.' }
        format.json { render :show, status: :ok, location: @propiedad }
      else
        format.html { render :edit }
        format.json { render json: @propiedad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /propiedades/1
  # DELETE /propiedades/1.json
  def destroy
    @propiedad.destroy
    respond_to do |format|
      format.html { redirect_to propiedades_url, notice: 'Propiedad eliminada correctamente.' }
      format.json { head :no_content }
    end
  end

  def mensuras
    respond_to do |format|
      format.html { render layout: false }
    end
  end

   def resultado_busqueda
      @propiedades = Propiedad.where('partida::text ilike ?', "%#{params[:propiedades][:partida]}%") 
  end
  def asignar
    
  end

  def busqueda
    render(layout: false)
  end
  
  def consulta
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_propiedad
      @propiedad = Propiedad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def propiedad_params
      params.require(:propiedad).permit(:partida, 
                                        :propiedad_union_id, 
                                        :localidad_id, 
                                        :irp_tomo, 
                                        :irp_folio_real, 
                                        :irp_folio_uf, 
                                        :cantidad_ocupantes, 
                                        :fecha_aplicacion_decreto, 
                                        :coeficiente_prorrateo, 
                                        :superficie_unidad_funcional, 
                                        :piso, 
                                        :dpto, 
                                        :propiedad_block_id, 
                                        :tipo_propiedad_id, 
                                        :zona_id, 
                                        :jurisdiccion_id, 
                                        :agua_cte, 
                                        :cloaca, 
                                        :irp_finca, 
                                        :exp_nro, 
                                        :exp_anio, 
                                        :exp_letra, 
                                        :propiedad_origen_id, 
                                        :fecha_vigencia)
    end
end
