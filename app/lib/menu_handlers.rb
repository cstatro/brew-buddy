####### SIGN IN

def greet_user
    input = STDIN.gets.chomp
    input.downcase!
    if User.find_by(name: input)
        signed_in_user = User.find_by(name: input)
        puts "Welcome back #{signed_in_user.name.capitalize}!"
        signed_in_user
        ##list menu options
    else
        print_line
        prompt_zipcode
        zip = STDIN.gets.chomp
        print_line
        signed_in_user = User.create(name: input,zipcode: zip.to_i)
        puts "Thanks for singing up #{input.capitalize}! Please have a look around at our selection of beers."
        signed_in_user
    end
end

####### MAIN MENU
