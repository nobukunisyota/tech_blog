class Staff::SessionController < Staff::Base
    def new
        if current_staff_mamber
            redirect_to :staff_root
        else
            @form = Staff::LoginForm.new
            render action: "new"
        end
    end
end
