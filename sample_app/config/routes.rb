Rails.application.routes.draw do
    get 'posts/new'
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    get 'top' => 'root#top'
    post 'posts' => 'posts#create'
    get 'posts' => 'posts#index'
    get 'posts/:id' => 'posts#show', as: 'post'
    get 'posts/:id/edit' => 'posts#edit', as: 'edit_post'
    patch 'posts/:id' => 'posts#update', as: 'update_post'
    delete 'posts/:id' => 'posts#destroy', as: 'destroy_post'
end