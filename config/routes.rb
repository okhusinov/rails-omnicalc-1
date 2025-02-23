Rails.application.routes.draw do

    get("/square/new", { :controller => "omnicalc", :action => "square_new" })
    get("/square/results", { :controller => "omnicalc", :action => "square_result" })
    get("/square_root/new", { :controller => "omnicalc", :action => "square_root_new" })
    get("/square_root/results", { :controller => "omnicalc", :action => "square_root_result" })
    get("/random/new", { :controller => "omnicalc", :action => "random_new" })
    get("/random/results", { :controller => "omnicalc", :action => "random_result" })
    get("/payment/new", { :controller => "omnicalc", :action => "payment_new" })
    get("/payment/results", { :controller => "omnicalc", :action => "payment_result" })
    get("/", { :controller => "omnicalc", :action => "homepage" })
  
end
