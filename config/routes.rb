TasksMaker::Application.routes.draw do
  resources :pitems do
     resources :tasks do
       get :complete, on: :member
    end
  end
end
