
clubs = [
  {name: "The Green Dragon", description: "The place where the coolest vertically challenged citizens of Middle-Earth get loud and tell tall tales"},
  {name: "Cantina at Mos Eisley", description: "If you want to prove you can hang with scum and villainy's greatest hits, this is your joint"},
  {name: "The Hog's Head", description: "Aspiring wizards drink butterbeer here and host mind-numbing after parties"},
  {name: "The Babylon Club", description: "Say hello to your little friend, or other friends at this south Florida staple"}
]

clubs.each do |club|
  Club.create(club)
end
