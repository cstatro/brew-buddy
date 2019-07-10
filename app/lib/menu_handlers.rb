####### SIGN IN

def greet_user
    input = STDIN.gets.chomp
    input.downcase!
    if User.find_by(name: input)
        signed_in_user = User.find_by(name: input)
        print_line
        puts "Welcome back #{signed_in_user.name.capitalize}!"
        line_break
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
    begin 
    prompt_sub_1_1_search
    session.current_que = STDIN.gets.chomp
    session.result_list = beer_search_with_index(session.current_que,session.current_page)
    session.total_pages = beer_search(session.current_que)["numberOfPages"]
    main_sub_1_1_handle_results(session)
    rescue 
        puts "No Results!"
        main_sub_1_1_handle(session)
    end
end

def main_sub_1_1_handle_results(session)
    prompt_sub_1_1_selection
    input = STDIN.gets.chomp
    
    if input.to_i > 0
        session.selected = session.result_list[(input.to_i)-1]   
        main_sub_1_1_handle_selection(session)
    elsif input == ">"
        session.current_page = page_toggle_up(session.current_page,session.total_pages)
        session.result_list = beer_search_with_index(session.current_que,session.current_page)
        main_sub_1_1_handle_results(session)
    elsif input == "<"
        session.current_page = page_toggle_down(session.current_page)
        session.result_list = beer_search_with_index(session.current_que,session.current_page)
        main_sub_1_1_handle_results(session)
    elsif input.downcase == "cancel"
        session.main_menu
    else
        not_found
        session.main_menu
    end
end
    


def main_sub_1_1_handle_selection(session)
    prompt_sub_1_1_result
    input =  STDIN.gets.chomp 
    case(input.to_i)
    when 1
       
        session.u.rate_beer(session.selected)
        session.main_menu
    when 2    
        
        session.u.save_interest(session.selected)
        session.main_menu
    else 
        not_found
        session.main_menu
    end
end








# def main_sub_1_1_interest(session)
    
#     choice = STDIN.gets.chomp
#     session.u.save_interest(session.result_list[choice.to_i-1])
#     session.main_menu
# end

# def main_sub_1_1_rate(session)
#     prompt_sub_1_1_result
#     choice = STDIN.gets.chomp
#     session.u.rate_beer(session.result_list[choice.to_i-1])
#     session.main_menu
# end


### MAIN MENU - SUB 2
# view my ratings



### HANDLING LEAVING REVIEW 
