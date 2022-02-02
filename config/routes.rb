Rails.application.routes.draw do
  scope module: :public do
    get "top"
    devise_for :publics, controller: {
      registrations: "publics/registrations",
      sessions: "publics/sessions"
    }
  end
  
  scope module: :admin do
    root to: "homes#top"
    devise_for :admins, controller: {
      registrations: "admins/registrations",
      sessions: "admins/sessions"
    }
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
