Rails.application.routes.draw do
  get("/",           { :controller => "casts", :action => "directors_list" })

  get("/directors",           { :controller => "casts", :action => "directors_list" })
  get("/actors",              { :controller => "casts", :action => "actors_list" })
  get("/movies",              { :controller => "movies", :action => "movies_list" })

  get("/directors/new_form",  { :controller => "casts", :action => "new_form" })
  get("/actors/new_form",     { :controller => "casts", :action => "new_form" })
  get("/movies/new_form",     { :controller => "movies", :action => "new_form" })

  get("/directors/:id",       { :controller => "casts", :action => "cast_detail" })
  get("/actors/:id",          { :controller => "casts", :action => "cast_detail" })
  get("/movies/:id",          { :controller => "movies",:action => "movie_detail" })

  get("/directors/:id/edit",  { :controller => "casts", :action => "edit_form" })
  get("/actors/:id/edit",  { :controller => "casts", :action => "edit_form" })
  get("/movies/:id/edit",  { :controller => "movies", :action => "edit_form" })

  get("/delete_director/:id", { :controller => "casts", :action => "delete_cast" })
  get("/delete_actor/:id", { :controller => "casts", :action => "delete_cast" })
  get("/delete_movie/:id", { :controller => "movies", :action => "delete_movie" })

  get("/update_director/:id", { :controller => "casts", :action => "update_cast" })
  get("/update_actor/:id", { :controller => "casts", :action => "update_cast" })
  get("/update_movie/:id", { :controller => "movies", :action => "update_movie" })

  get("/create_director",     { :controller => "casts", :action => "create_cast" })
  get("/create_actor",        { :controller => "casts", :action => "create_cast" })
  get("/create_movie",        { :controller => "movies", :action => "create_movie" })


end
