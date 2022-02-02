Rails.application.routes.draw do
  scope module: :public do
    root to: "homes#top"
    devise_for :publics, path: "public", controller: {
      registrations: "publics/registrations",
      sessions: "publics/sessions"
    }
  end
  
  scope module: :admin do
    root to: "homes#top"
    devise_for :admins, path: "admin", controller: {
      registrations: "admins/registrations",
      sessions: "admins/sessions"
    }
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
