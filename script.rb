movies = {
    jurassic_world: 4
}

puts "What do you want to do? "
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."
choice = gets.chomp.downcase

case choice

when 'add'
    puts "Enter movie title: "
    title = gets.chomp
    if movies[title.to_sym].nil?
        puts "Enter movie rating (between 0 and 4): "
        rating = gets.chomp
        movies[title.to_sym] = rating.to_f
        puts "#{title} has been added with a rating of #{rating}."
    else
        puts "Entry already exists. Its rating is is #{movies[title.to_sym]}."
    end
    
when 'update'
    puts "Enter movie title: "
    title = gets.chomp
    if movies[title.to_sym].nil?
        puts "Movie not found"
    else
        puts "Enter new rating: "
        movies[title.to_sym] = rating.to_f
        puts "#{title} has been updated. Its rating is now #{rating}."
    end
    
when 'display'
    movies.each {|movie, rating| puts "#{movie}: #{rating}"}
    
when 'delete'
    puts "Enter movie title: "
    title = gets.chomp
    if movies[title.to_sym].nil?
        puts "Error: Movie is not in the hash."
    else
        movies.remove(movies[title.to_sym])
        puts "#{title} has been removed"
    end
    
else
    puts "Error: Not a valid entry"
end