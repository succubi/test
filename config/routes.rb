TestApp::Application.routes.draw do
  resources :modulls

  match '/module',
        controller: 'modulls',
        action: 'modules'
  
  
end
