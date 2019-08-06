Rails.application.routes.draw do
  get 'storefront/all_items'
  get 'storefront/items_by_category'
  get 'storefront/items_by_brand'
  devise_for :users
  resources :products #created by scaffolding
  root 'storefront#all_items' #root= whenever I type localhost:3000, the page I load up is products index
  # it's the products controller I need to look up, and index tells me how to execute
  #(go to controller and look at def index @products = Product.all (<--.all is method inside of active record (.all is the action method)))
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #routes: directory of every single mailing address in the country
end
