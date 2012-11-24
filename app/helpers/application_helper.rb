module ApplicationHelper
    def dynamic_login_links
        if @auth
            link_to "Logout", logout_path
        else
            link_to "Login", login_path
        end
    end

    def dynamic_photos_links
        if @auth
            link_to "Photos", photos_path
        else
        end
    end

    def dynamic_dashboard_links
        if @auth
            link_to @auth.username, dashboard_index_path
        else
        end
    end

    def dynamic_search_links
        if @auth
            link_to "Search", search_path
        else
        end
    end
end
