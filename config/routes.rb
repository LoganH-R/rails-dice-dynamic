Rails.application.routes.draw do
  get("/dice/:num_dice/:size_die", {:controller => "roll", :action => "roll_dice" })

  get("/", {:controller => "roll", :action => "home"})
end
