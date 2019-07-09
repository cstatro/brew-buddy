class Session 
    attr_accessor :logged_in
    def initialize
        ###Put Logo Here
        puts "Welcome to Beer Buddy!"
        toggle_login
    end
    def toggle_login
        if !logged_in
            @logged_in = greet_user
            # main_menu
        else
            self.view = nil
            self.logged_in = nil
        end
    end
    def main_menu
        # display_main_options
        input = STDIN.gets.chomp
        print_line
        handle_main_menu_input(input,self)
    end
end