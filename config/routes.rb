Rails.application.routes.draw do

  #RUTAS DE LA TABLA Tiendas
  get '/tiendas', to: 'tiendas#index'
  get '/tiendas/new', to: 'tienda#new'
  post '/tiendas', to: 'tiendas#create'
  get '/tienda/:id', to: 'tiendas#show', as: 'tienda'
  get '/tiendas/:id/edit', to: 'tiendas#edit', as: 'edit_tienda'
  patch '/tienda/:id', to: 'tiendas#update'
  put '/tienda/:id', to: 'tiendas#update'
  delete '/tienda/:id', to: 'tiendas#delete'

  #RUTAS DE LA TABLA PRODUCTOS
  get '/productos', to: 'productos#index'
  get '/productos/new', to: 'producto#new'
  post '/productos', to: 'productos#create'
  get '/producto/:id', to: 'productos#show', as: 'producto'
  get '/producto/:id/edit', to: 'productos#edit', as: 'edit_producto'
  patch '/producto/:id', to: 'productos#update'
  put '/producto/:id', to: 'productos#update'
  delete '/producto/:id', to: 'productos#delete'

  #RUTAS DE LA TABLA CATEGORIA
  get '/categorias', to: 'categorias#index'
  get '/categorias/new', to: 'categoria#new'
  post '/categorias', to: 'categorias#create'
  get '/categoria/:id', to: 'categorias#show', as: 'categoria'
  get '/categoria/:id/edit', to: 'categorias#edit', as: 'edit_categoria'
  patch '/categoria/:id', to: 'categorias#update'
  put '/categoria/:id', to: 'categorias#update'
  delete '/categoria/:id', to: 'categorias#delete'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
