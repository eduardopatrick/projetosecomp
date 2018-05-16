Rails.application.routes.draw do
    #Root
        root to: "home#index", as: :root
    # Subscription
        match '/contacts',     to: 'contacts#new',             via: 'get'
        resources "contacts", only: [:new, :create]

    #Pre-inscricao
        match '/preinscricoes',     to: 'preinscricoes#new',             via: 'get'
        resources "preinscricoes", only: [:new, :create]

    #Camisas
        match '/shirts', to: 'shirts#index',    via:'get'
        resources "shirts",  only: [:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
