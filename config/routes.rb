Rails.application.routes.draw do
get("/", {:controller =>"zebra" , :action => "home_page"})

get("/rock", {:controller =>"zebra" , :action => "rock_page"})

get("/paper", {:controller =>"zebra" , :action => "paper_page"})

get("/scissors", {:controller =>"zebra" , :action => "scissors_page"})


end
