Rails.application.routes.draw do
  get("/",        { :controller => "fortunes", :action => "lucky" })

  get("/lucky_numbers",   { :controller => "fortunes", :action => "lucky" })
  get("/unlucky_numbers", { :controller => "fortunes", :action => "unlucky" })

  get("/random/:min/:max", {:controller => "fortunes", :action => "randomness"})

  get("/zodiacs/new", {:controller => "zodiacs", :action => "new_form"})

  get("/create_zodiac", {:controller => "zodiacs", :action => "create_row"})

  get("/signs/:the_sign", {:controller => "zodiacs", :action => "sign"})

  get("/creatures/:the_creature", { :controller => "zodiacs", :action => "creature" })

  get("/zodiacs/:the_id", { :controller => "zodiacs", :action => "show" })

  get("/zodiacs", {:controller => "zodiacs", :action => "index"})

  get("/delete_zodiac/:the_id", {:controller => "zodiacs", :action => "destroy_row"})

end
