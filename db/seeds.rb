Superhero.destroy_all
Superpower.destroy_all

superpowers = [
  {superpower_id:1, name:"super strength",description: "gives the wielder super human strengths"},
  {superpower_id:2, name:"flight",description: "gives the wielder the ability to fly through the skys at supersonic speed"},
  {superpower_id:3, name:"super human senses",description: "allows the person to user their senses at super human level"},
  {superpower_id:4, name:"elasticity",description: "can stretch the human body to extreme lengths"},
]

superpowers.each {|superpower| Superpower.create(superpower)}

superheroes = [
  {name:"Peter Parker", super_name:"Spider-Man", superpower_id:3 },
  {name:"Steve Rogers", super_name:"Captain America", superpower_id:1 },
  {name:"Bruce Banner", super_name:"Hulk", superpower_id:1 },
  {name:"Natasha Romanoff", super_name:"Black Widow", superpower_id:3 },
  {name:"Matthew Murdock", super_name:"Dare Devil", superpower_id:3 },
  {name:"Reed Richards", super_name:"Mr.Fantastic", superpower_id:4 },
  {name:"T'Challa", super_name:"Black Panther", superpower_id:3 },
  {name:"Thor Odinson", super_name:"Thor", superpower_id:1 },
  {name:"Tony Stark", super_name:"Iron Man", superpower_id:2 },
  {name:"Carol Danvers", super_name:"Captain Marvel", superpower_id:2 }
]

# ---------------
# POWERFUL HEROES:
# Once you set up your tables and associations the way you want them, you can
# uncomment the following method to associate superheroes with a superpower!
# Just uncomment line 33 and run `rake db:seed` again in your terminal.
# (Note: If you try to do this before you set up proper associations, it will error.)
# ---------------
superheroes = superheroes.map { |hero| hero.merge( { superpower_id: Superpower.all.sample.id } ) }
# ---------------

superheroes.each { |hero| Superhero.create(hero) }
