Rails.application.routes.draw do
  root to: 'pages#home'
  get 'services', to: 'pages#services'
  get 'gammes', to: 'pages#gammes'
  get 'phytotherapie', to: 'pages#phytotherapie'
  get 'homeopathie', to: 'pages#homeopathie'
  get 'gemmotherapie', to: 'pages#gemmotherapie'
  get 'puericulture', to: 'pages#puericulture'
  get 'orthopedie', to: 'pages#orthopedie'
  get 'materiel_medical', to: 'pages#materiel_medical'
  get 'complements_alimentaires', to: 'pages#complements_alimentaires'
  get 'dermatologie', to: 'pages#dermatologie'
  get 'veterinaire', to: 'pages#veterinaire'
  get 'incontinence', to: 'pages#incontinence'
  get 'veterinaire', to: 'pages#veterinaire'
  get 'optique', to: 'pages#optique'
  get 'oncologie', to: 'pages#oncologie'
  get 'fleurdebach', to: 'pages#fleurdebach'

  mount Attachinary::Engine => "/attachinary"

  Rails.application.routes.draw do
      resources :ordonnances, only: [:show, :index, :new, :create]
      resources :contacts, only: [:show, :index, :new, :create], :path => "contact"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
