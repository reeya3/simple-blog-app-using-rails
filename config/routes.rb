# frozen_string_literal: true

Rails.application.routes.draw do
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#home'
  get 'about', to: 'welcome#about'
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
end
