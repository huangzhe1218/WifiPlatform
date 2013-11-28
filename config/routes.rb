Wifiplatform::Application.routes.draw do
  root :to=>"about#main"
  match "login"=>"info#marketing",  :as=>"login"
  match "submit_login_form" => "user#login"
  get "/create_course" => "courses#new", :as=>"create_course"
  get "/logout"=>"user#logout", :as=>"logout"
  




end
