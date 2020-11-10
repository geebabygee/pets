Rails.application.routes.draw do
  # See all lost pets
  # get '/pets', to: 'pets#index'
  # See 1 particular lost pet
  # Add a lost pet
  # Update details of pet
  # Delete from db if pet is found

  resources :pets

end
