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

def prompt_sub_one
    puts "1. New Search"
    puts "2. Back to Main Menu"
    print_line
end

    ### MAIN MENU - SUB 1-1

def prompt_sub_1_1_search
    puts "Please Enter Search Query:"
    print_line
end

def prompt_sub_1_1_result
    puts "1. Rate Beer"
    puts "2. Save To My Interests"
    print_line
end

def prompt_sub_1_1_selection
    puts "Select Beer From List"
end
### MAIN MENU - SUB 2
# view my ratings

