class Staff::Base < AplicationContoller
    private def current_staff_menber
        if session[:staff_member_id]
            @current_staff_menber ||= StaffMember.find_by(id: session[:staff_member_id])
        end
    end

    helper_method :current_staff_menber
end
