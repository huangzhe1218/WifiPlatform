Wifiplatform::Application.routes.draw do
  root :to=>"about#main"
  match "login"=>"info#marketing",  :as=>"login"
  match "submit_login_form" => "user#login"
  get "/create_course" => "courses#new", :as=>"create_course"
  get "/logout"=>"user#logout", :as=>"logout"
  post "/course" => "courses#create"
  get "/course" => "courses#index", :as => "course_index" 
  get "/:member_name/:course_name/edit" => "courses#edit" , :as => "edit_course"
  delete "/:member_name/:course_name" => "courses#destroy"



end
