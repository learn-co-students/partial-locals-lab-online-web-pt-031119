Rails.application.routes.draw do
  get 'students/search', to: 'students#search_form', as: 'student_search'
  post 'students/search', to: 'students#search_result'
  resources :students, except: :destroy
  resources :classrooms, except: :destroy
end
