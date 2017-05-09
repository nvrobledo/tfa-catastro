Rails.application.routes.draw do
  resources :objetos_mensuras
  resources :mensuras do
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
  resources :parcelas
  resources :visadores
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
