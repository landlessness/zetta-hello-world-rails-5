Rails.application.routes.draw do
  get 'zetta_device_registrations/show'

  resources :devices, controller: 'zetta_device_registrations'

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
