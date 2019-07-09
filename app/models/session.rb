class Session 
    attr_accessor :u, :current_que
    def initialize
        ###Put Logo Here
        prompt_sign_in
        toggle_login
    end
    def toggle_login
        if !u
            @u = greet_user
            main_menu
        else
            self.view = nil
            self.u = nil
        end
    end
    def main_menu
        display_main_options
        input = STDIN.gets.chomp
        print_line
        handle_main_menu_input(input,self)
    end
end