class UpdateProfileOp < Hyperloop::Operation
  param :email, default: nil, type: String
  param :password, default: nil, type: String
  param :password_confirmation, default: nil, type: String

  step { @user = User.current }

  step { @user.email = params.email if params.email }

  step { @user.save }

  step {
    if params.password || params.password_confirmation
      UpdatePasswordOp.run(
        acting_user: @user,
        password: params.password,
        password_confirmation: params.password_confirmation,
      )
    end
  }

  failed { |e|
    puts "failed in update_profile_op.rb #{e}"
  }
end
