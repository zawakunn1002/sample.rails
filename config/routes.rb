Rails.application.routes.draw do
  get 'posts/new'



  get 'top' => 'root#top'

  post 'posts' => 'posts#create'

  get 'posts' => 'posts#index'

  get 'posts/:id' => 'posts#show', as: 'post'
end
