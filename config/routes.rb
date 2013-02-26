TasksMaker::Application.routes.draw do
  devise_for :users 
  resources :pitems do
     resources :tasks do
       get :complete, on: :member
    end
  end
  root to: "pitems#index"
end
