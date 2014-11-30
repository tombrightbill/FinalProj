Rails.application.routes.draw do

  root 'welcome#index'

  get '/' => 'search#index'
  post 'search/show' => 'search#show'


end
