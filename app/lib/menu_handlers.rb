####### SIGN IN

def greet_user
    puts "Please Enter Name:"
    input = STDIN.gets.chomp
    input.downcase!
    if User.find_by(name: input)
        signed_in_user = User.find_by(name: input)
        puts "Welcome back #{signed_in_user.name.capitalize}!"
        signed_in_user
        ##list menu options
    else
        signed_in_user = User.create(name: input)
        puts "Thanks for singing up #{input.capitalize}! Please have a look around at our selection of books."
        signed_in_user
    end
end