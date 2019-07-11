class Session 
    attr_accessor :u, :current_que,:result_list,:selected,:current_page,:total_pages
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
        self.u.reload
        self.current_que = nil
        self.result_list = nil
        self.selected = nil
        self.current_page = 1
        display_main_options
        input = STDIN.gets.chomp
        print_line
        handle_main_menu_input(input,self)
    end

    def profile_menu
        self.u.reload
        self.current_que = nil
        self.result_list = nil
        self.selected = nil
        self.current_page = 1
        display_profile_options
        # input = STDIN.gets.chomp
        # print_line
        main_sub_two_handle(self)
    end

end