class Profile < Hyperloop::Router::Component
  state email: nil
  state current_password: nil
  state password: nil
  state password_confirmation: nil

  before_mount do
    # any initialization particularly of state variables goes here.
    # this will execute on server (prerendering) and client.

    @user = User.current
  end

  after_mount do
    # any client only post rendering initialization goes here.
    # i.e. start timers, HTTP requests, and low level jquery operations etc.
  end

  before_update do
    # called whenever a component will be re-rerendered
  end

  before_unmount do
    # cleanup any thing (i.e. timers) before component is destroyed
  end

  receives UpdatePasswordOp do
    puts "UpdatePasswordOp confirmed"
  end

  render do
    Loadable({ loadable: @user }) do
      DIV(class_name: 'card') do
        DIV(class_name: 'card-content') do
          H1 { "Profile" }

          FORM(class_name: 'material-form') {
            DIV(class_name: 'row') do
              INPUT(
                defaultValue: @user.email,
                autoComplete: 'off',
              ).on(:change) do |evt|
                mutate.email evt.target.value
              end

              LABEL { 'Email' }
            end

            DIV(class_name: 'row') do
              INPUT(
                type: 'password',
                autoComplete: 'off',
              ).on(:change) do |evt|
                mutate.password evt.target.value
              end

              LABEL { 'New Password' }
            end

            DIV(class_name: 'row') do
              INPUT(
                type: 'password',
                autoComplete: 'off',
              ).on(:change) do |evt|
                mutate.password_confirmation evt.target.value
              end

              LABEL { 'Retype New Password' }
            end

            BUTTON(class_name: 'btn') { 'Save' }
          }.on(:submit) do |evt|
            evt.prevent_default

            UpdateProfileOp.run(
              email: state.email,
              password: state.password,
              password_confirmation: state.password_confirmation,
            ).then {
              puts "success"
            }.fail {
              puts "fail in profile.rb"
            }
          end
        end
      end
    end
  end
end
