class ExpedientesController < ApplicationController
  
  def busqueda
    render(layout: false)
  end

  def resultado_busqueda
    @expedientes = Expediente.where('nro_expediente::text ilike ?', "%#{params[:expedientes][:numero]}%")
  end

  def asignar
  	 @expediente = Expediente.find(params[:id])    
  end
  
end
