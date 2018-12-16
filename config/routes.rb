Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :students, :instruments, :lessons, :teachers
      post "signin", to: "students#signin"
      get "validate", to: "students#validate"
    end
  end
end
