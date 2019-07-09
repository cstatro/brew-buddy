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

def handle_main_menu_input(input, session)
    case(input.to_i)
    when 1
       
        main_sub_one_handle(session)
        
    when 2

        session.u.display_ratings
        print_line
        session.main_menu

    when 3
    else
        not_found
        session.main_menu
    end
end
        ### MAIN MENU - SUB 1
def main_sub_one_handle(session)
    prompt_sub_one
    input = STDIN.gets.chomp
    case(input.to_i)
    when 1
        main_sub_1_1_handle(session)
    when 2
        session.main_menu
    else
        not_found
        session.main_menu
    end
    
end
            ### MAIN MENU - SUB 1-1
def main_sub_1_1_handle(session)
    prompt_sub_1_1_search
    session.current_que = STDIN.gets.chomp
    session.result_list = beer_search_with_index(session.current_que)
    main_sub_1_1_choice(session)

end

def main_sub_1_1_choice(session)
    prompt_sub_1_1_result
    choice = STDIN.gets.chomp
    session.u.rate_beer(session.result_list[choice.to_i-1])
    session.main_menu
end


### MAIN MENU - SUB 2
# view my ratings
            