Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :students, :instruments, :lessons, :teachers,:availabilities
      post "signin", to: "students#signin"
      post "signup", to: "students#signup"
      get "validate", to: "students#validate"
    end
  end
end
