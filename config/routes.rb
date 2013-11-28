Wifiplatform::Application.routes.draw do
  root :to=>"about#main"
  match "login"=>"info#marketing",  :as=>"login"
  match "submit_login_form" => "user#login"




end
