class ObjetosMensurasController < ApplicationController
  before_action :set_objetos_mensura, only: [:show, :edit, :update, :destroy]

  # GET /objetos_mensuras
  # GET /objetos_mensuras.json
  def index
    @objetos_mensuras = ObjetosMensura.all
  end

  # GET /objetos_mensuras/1
  # GET /objetos_mensuras/1.json
  def show
  end

  # GET /objetos_mensuras/new
  def new
    @objetos_mensura = ObjetosMensura.new
  end

  # GET /objetos_mensuras/1/edit
  def edit
  end

  # POST /objetos_mensuras
  # POST /objetos_mensuras.json
  def create
    @objetos_mensura = ObjetosMensura.new(objetos_mensura_params)

    respond_to do |format|
      if @objetos_mensura.save
        format.html { redirect_to @objetos_mensura, notice: 'Objetos mensura was successfully created.' }
        format.json { render :show, status: :created, location: @objetos_mensura }
      else
        format.html { render :new }
        format.json { render json: @objetos_mensura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /objetos_mensuras/1
  # PATCH/PUT /objetos_mensuras/1.json
  def update
    respond_to do |format|
      if @objetos_mensura.update(objetos_mensura_params)
        format.html { redirect_to @objetos_mensura, notice: 'Objetos mensura was successfully updated.' }
        format.json { render :show, status: :ok, location: @objetos_mensura }
      else
        format.html { render :edit }
        format.json { render json: @objetos_mensura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /objetos_mensuras/1
  # DELETE /objetos_mensuras/1.json
  def destroy
    @objetos_mensura.destroy
    respond_to do |format|
      format.html { redirect_to objetos_mensuras_url, notice: 'Objetos mensura was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_objetos_mensura
      @objetos_mensura = ObjetosMensura.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def objetos_mensura_params
      params.require(:objetos_mensura).permit(:descripcion)
    end
end
