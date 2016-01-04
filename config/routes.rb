Rails.application.routes.draw do
  root 'root#index'

  resources :devices, controller: 'zetta_device_proxies'

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
