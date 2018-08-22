module ApplicationHelper
  def login_helper
    if current_user.is_a?(GuestUser)
      (link_to "Registration", new_user_registration_path) + "".html_safe +
      (link_to "login", new_user_session_path)
    else
      link_to "Logout", destroy_user_session_path, method: :delete
    end
  end

  def copy_right
    "\u00A9 #{Time.current.year} All Rights Reserved "
  end
end
