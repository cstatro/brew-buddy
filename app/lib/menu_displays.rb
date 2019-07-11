### GENERAL PURPOSE

def print_line
    puts "---------------------------------------------------"
end

def line_break
    puts " "
end

def break_line_break
    puts " "
    puts "---------------------------------------------------"
    puts " "
end

def prompt_for_rating
    puts "Please enter Rating:"
    print_line
end

def not_found
    line_break
    puts "Option not found."
    print_line
end

###SESSION OPEN GREETINGS

def prompt_sign_in
    line_break
    line_break
    puts "                Welcome to Brew Buddy!"
    puts "                ----------------------"
    line_break
    puts "Please Enter Your Name:"
    print_line
end

def prompt_zipcode
    puts "Please Enter Zipcode:"
    print_line
end

### MAIN MENU

def display_main_options
    print_line
    puts "1. Search For Beer"
    puts "2. My Profile"
    puts "3. Logout"
    print_line
end


### MAIN MENU - SUB PROFILE

def display_profile_options
    puts "1. Back to Main Menu"
    puts "2. Remove a Beer from My Interests"
    puts "3. Refresh Page"
    puts "4. Logout"
    print_line
end

def prompt_remove_beer
    print_line
    puts "What Beer would you like to remove?"
    line_break
end

### MAIN MENU - SUB 1

def prompt_sub_one
    puts "1. New Search"
    puts "2. Back to Main Menu"
    print_line
end

    ### MAIN MENU - SUB 1-1

def prompt_sub_1_1_search
    print_line
    puts "Please Enter Search Query:"
    print_line
end

def prompt_sub_1_1_result
    print_line
    puts "1. Rate Beer"
    puts "2. Save To My Interests"
    print_line
end

def prompt_sub_1_1_selection
    print_line
    puts "Select Beer From List Using Integer"
    puts "Use \"<\" or \">\" to turn pages."
    puts "Type Cancel To Back Out To Main Menu"
    print_line
end


#### HEADERS


def user_profile_header
    line_break
    puts "                #{u.name.capitalize}'s Profile"
    line_break
end
    ### MAIN MENU - SUB 2-1
def user_stats_header
    print_line
    puts "My Stats"
    print_line
end


