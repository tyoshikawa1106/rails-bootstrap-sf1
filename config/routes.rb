BootstrapSf1App::Application.routes.draw do
  root 'samples#index'
  match '/theme', to: 'samples#theme', via: 'get'
  match '/icons', to: 'samples#icons', via: 'get'
  match '/new', to: 'samples#new', via: 'get'
  
  match '*path' => 'application#error404', via: :all
end
