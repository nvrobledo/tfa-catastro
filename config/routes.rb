Rails.application.routes.draw do
  resources :localidades do
    collection do
      get :busqueda
      get :asignar
      post :resultado_busqueda
    end
  end
  resources :iniciadores do
    collection do
      get :busqueda
      get :asignar
      post :resultado_busqueda
    end
  end
  resources :objetos_mensuras
  resources :mensuras do
    member do
      get :reporte
    end
    collection do
      get :busqueda
      get :asignar
      post :resultado_busqueda
    end
  end
  resources :expedientes do
    collection do
         get :busqueda
         get :asignar
         post :resultado_busqueda
    end
  end
  resources :propiedades
  resources :parcelas do
    collection do
      get :mensuraPar
    end
  end
  resources :visadores do
    collection do
      get :busqueda
      get :asignar
      post :resultado_busqueda
    end
  end
  resources :jurisdicciones do
    member do
      get :get_mensure_attributes #  /jurisdicciones/:id/get_mensure_attributes
    end
  end
  resources :departamentos
  get 'welcome/index'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
