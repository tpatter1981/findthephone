Rails.application.routes.draw do

  resources :employees
  resources :payroll, only: [:index, :new, :create]
  root 'employees#index'
end
