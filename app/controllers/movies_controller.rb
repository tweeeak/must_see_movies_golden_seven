class MoviesController < ApplicationController
  def movies_list
    @movies_list = Movie.all
    render("movie_list.html.erb")
  end

  def movie_detail
    @movie = Movie.find_by({ :id => params["id"] })
  end

  def create_movie
    @movie = Movie.new
    @movie.title          = params["movie_title"]
    @movie.image_url      = params["movie_picture"]
    @movie.year           = params["movie_year"]
    @movie.duration       = params["movie_duration"]
    @movie.description    = params["movie_description"]
    @movie.save
    redirect_to("http://localhost:3000/movies")
  end

  def delete_movie
    @m = Movie.find_by({ :id => params["id"] })
    @m.destroy
    redirect_to("http://localhost:3000/movies")
  end

  def edit_form
    @movie = Movie.find_by({ :id => params["id"] })
  end

  def update_movie
    @movie = Movie.find_by({ :id => params["id"] })
    @movie.title          = params["movie_title"]
    @movie.image_url      = params["movie_picture"]
    @movie.year           = params["movie_year"]
    @movie.duration       = params["movie_duration"]
    @movie.description    = params["movie_description"]
    @movie.save
    redirect_to("http://localhost:3000/movies")
  end

end
