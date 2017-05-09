class JurisdiccionesController < ApplicationController
  before_action :set_jurisdiccion, only: [:show, :edit, :update, :destroy,  :get_mensure_attributes]

  # GET /jurisdicciones
  # GET /jurisdicciones.json
  def index
    @jurisdicciones = Jurisdiccion.all
  end

  # GET /jurisdicciones/1
  # GET /jurisdicciones/1.json
  def show
  end

  # GET /jurisdicciones/new
  def new
    @jurisdiccion = Jurisdiccion.new
  end

  # GET /jurisdicciones/1/edit
  def edit
  end

  # POST /jurisdicciones
  # POST /jurisdicciones.json
  def create
    @jurisdiccion = Jurisdiccion.new(jurisdiccion_params)

    respond_to do |format|
      if @jurisdiccion.save
        format.html { redirect_to @jurisdiccion, notice: 'Jurisdiccion was successfully created.' }
        format.json { render :show, status: :created, location: @jurisdiccion }
      else
        format.html { render :new }
        format.json { render json: @jurisdiccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jurisdicciones/1
  # PATCH/PUT /jurisdicciones/1.json
  def update
    respond_to do |format|
      if @jurisdiccion.update(jurisdiccion_params)
        format.html { redirect_to @jurisdiccion, notice: 'Jurisdiccion was successfully updated.' }
        format.json { render :show, status: :ok, location: @jurisdiccion }
      else
        format.html { render :edit }
        format.json { render json: @jurisdiccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jurisdicciones/1
  # DELETE /jurisdicciones/1.json
  def destroy
    @jurisdiccion.destroy
    respond_to do |format|
      format.html { redirect_to jurisdicciones_url, notice: 'Jurisdiccion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def get_mensure_attributes
    respond_to do |format|
      format.json do
        unless @jurisdiccion.nil?
          render(json: @jurisdiccion.to_json(methods: [:caracter, :number]))
        else
          render(json: {caracter: nil}.to_json)
        end
      end
    end
  end


  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jurisdiccion
      @jurisdiccion = Jurisdiccion.find_by_id(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jurisdiccion_params
      params.require(:jurisdiccion).permit(:descripcion, :departamento_id)
    end
end
