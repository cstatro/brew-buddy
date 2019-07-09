### GENERAL PURPOSE

def print_line
    puts "---------------------------------------------------"
end

def prompt_for_rating
    puts "Please enter Rating:"
    print_line
end

def not_found
    puts "Option not found."
end

###SESSION OPEN GREETINGS

def prompt_sign_in
    puts "Welcome to Brew Buddy!"
    puts "Please Enter Your Name:"
    print_line
end

def prompt_zipcode
    puts "Please Enter Zipcode:"
    print_line
end

### MAIN MENU

def display_main_options
    puts "1. Search For Beer"
    puts "2. View My Ratings"
    puts "3. Logout"
    print_line
end

### MAIN MENU - SUB 1

def prompt_sub_one_start_search
    puts "1. Enter Your Search"
    puts "2. Back to Main Menu"
end


def prompt_sub_one
    puts "Select from above."
    print_line
end
