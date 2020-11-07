Rails.application.routes.draw do
  get 'home/ind'
  get 'welcome/index'
  get 'welcome/show'
  get 'welcome/index'

  root 'home#ind'

 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
