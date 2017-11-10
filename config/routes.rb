Rails.application.routes.draw do
  root 'cocktails#index'
  mount Attachinary::Engine => "/attachinary"
  resources:cocktails, only:[:index, :show, :new, :create] do
    resources:doses, only:[:new, :create]
  end
  delete '/doses/:id', to: 'doses#destroy'
end
