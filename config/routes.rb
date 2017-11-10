Rails.application.routes.draw do
  root 'cocktails#index'
  mount Attachinary::Engine => "/attachinary"
  resources:cocktails, only:[:index, :show, :new, :create] do
    resources:reviews, except: [:index, :edit, :update]
    resources:doses, only:[:new, :create]
  end
  delete '/doses/:id', to: 'doses#destroy'
  get '/reviews/:id', to: 'reviews#edit', as: 'edit_review'
  delete '/reviews/:id', to: 'reviews#destroy', as: 'destroy_review'
  patch '/reviews/:id', to: 'reviews#update', as: 'update_review'
end
