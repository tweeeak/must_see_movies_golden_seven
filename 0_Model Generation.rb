rake db:drop

#rails g model instructor first_name:string last_name:string
#:boolean
#:date
#:datetime
#:decimal
#:integer
#:string
#:text
#:time

#Director
#    name (string)
#    bio (text)
#    dob (string)
#    image_url (string)
#
#Actor
#    name (string)
#    bio (text)
#    dob (string)
#    image_url (string)

# They require the same fields. Let's make it one table "Cast"
rails g model cast name:string bio:text dob:string image_url:string role:string

#Movie
#    title (string)
#    year (integer)
#    duration (integer)
#    description (text)
#    image_url (string)
rails g model movie title:string year:integer duration:text description:text image_url:string

rake db:migrate
dake db:seed

