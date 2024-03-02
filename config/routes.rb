Rails.application.routes.draw do
  devise_for :admins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "home#index";
  authenticate :admin_user do
    root to: "admin#index", as: :admin_root
  end

  get "admin" => "admin#index"
end
