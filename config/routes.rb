Rails.application.routes.draw do
  ActiveAdmin.routes(self)

  resources :visa_applications do
    collection do
      get 'finished_form'
    end
  end
  resources :questions

  resources :users


  get 'landing', to:'layouts#landing'
  get 'choose_country', to:'layouts#choose_country'
  get 'country_page', to:'layouts#country_page'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
