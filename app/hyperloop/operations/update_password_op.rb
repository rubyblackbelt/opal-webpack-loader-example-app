class UpdatePasswordOp < Hyperloop::ServerOp
  param :acting_user
  param :password, default: nil, type: String
  param :password_confirmation, default: nil, type: String

  add_error :acting_user, :password_mismatch, "Passwords do not match" do
    params.password != params.password_confirmation
  end

  step { @user = params.acting_user }
  step { @user.password = params.password }
  step { @user.password_confirmation = params.password_confirmation }
  step { @user.save }

  failed { |ex|
    puts ex.inspect
    puts "failed in update_password_op.rb #{ex}"
  }

  dispatch_to @user
end
