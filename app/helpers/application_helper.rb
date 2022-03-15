module ApplicationHelper
  def display_session_links
      capture do
        if user_signed_in?
          concat link_to "Edit profile_", edit_user_registration_path
          concat " "
          concat link_to "_Sign out", destroy_user_session_path, method: :delete
          concat " "
        else
          concat link_to "Log in_", new_user_session_path
          concat " "
          concat link_to "_Registration", new_user_registration_path
          concat " "
        end
      end
  end
end
