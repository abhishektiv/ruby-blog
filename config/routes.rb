# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


Rails.application.routes.draw do
    root "articles#index"

    # get "/articles", to: "articles#index"
    # get "/articles/:id", to: "articles#show", becomes a resource - :articles

    resources :articles do
        resources :comments
    end
end
