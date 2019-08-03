module ApplicationHelper
    def user_roles(user)
        if user == nil
            return
        else
         user.roles.map(&:name).join(',').titleize

        end
    end
end

