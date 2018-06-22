class UserPolicy # defines policies for the User class
  # The regulate_instance_connections method enables instances of the User
  # class to be treated as a channel.

  # The policy is defined by a block that is executed in the context of the
  # current acting_user.

  # For our User instance connection the policy is that there must be a
  # logged-in user, and the connection is made to that user:
  regulate_instance_connections { self }
  # If there is no logged in user self will be nil, and no connection will be
  # made.

  regulate_all_broadcasts do |policy|
    policy.send_all.to(self)

    # policy.send_all_but(
    #   :encrypted_password,
    #   :reset_password_token,
    #   :reset_password_sent_at,
    #   :remember_created_at,
    #   :sign_in_count,
    #   :current_sign_in_at,
    #   :last_sign_in_at,
    #   :current_sign_in_ip,
    #   :last_sign_in_ip
    # )
  end
end
