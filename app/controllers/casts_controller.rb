class CastsController < ApplicationController
  def directors_list
    @cast_list = Cast.where({ :role => "director" })
    render("cast_list.html.erb")
  end
  def actors_list
    @cast_list = Cast.where({ :role => "actor" })
    render("cast_list.html.erb")
  end
  def cast_detail
    @cast = Cast.find_by({ :id => params["id"] })
  end
  def new_form
    @role = request.original_url[22..-11]
  end

  def delete_cast
    @c = Cast.find_by({ :id => params["id"] })
    @c.destroy
    redirect_to("http://localhost:3000/" + @c.role + "s")
  end

  def create_cast
    @cast = Cast.new
    @cast.name      = params["cast_name"]
    @cast.image_url = params["cast_picture"]
    @cast.dob       = params["cast_dob"]
    @cast.bio       = params["cast_bio"]
    if request.original_url[29] == "d" then
      @cast.role    = "director"
    else
      @cast.role    = "actor"
    end
    @cast.save
    redirect_to("http://localhost:3000/"+@cast.role+"s")
  end

  def edit_form
    @cast = Cast.find_by({ :id => params["id"] })
  end

  def update_cast
    @cast = Cast.find_by({ :id => params["id"] })
    @cast.name      = params["cast_name"]
    @cast.image_url = params["cast_picture"]
    @cast.dob       = params["cast_dob"]
    @cast.bio       = params["cast_bio"]
    @cast.save
    redirect_to("http://localhost:3000/" + @cast.role + "s")
  end
end
