class Profile < Hyperloop::Router::Component
	state email: nil
	# state email: User.current && User.current.email

  before_mount do
    # any initialization particularly of state variables goes here.
    # this will execute on server (prerendering) and client.
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

  def form=(form)
    puts '>' * 10
    @form = form
  end

  render do
		# email = User.current && User.current.email
		user = User.current

		if User.current.loading? || !user.email
			Spinner {}
		else
			DIV do
				DIV(class_name: 'card') do
          DIV(class_name: 'card-content') do
            H1 { "Profile" }

            FORM(ref: method(:form=).to_proc) {
              INPUT(
                defaultValue: user.email,
                placeholder: "Email",
              )
              BUTTON(class_name: 'btn', type: 'submit') { 'Submit' }
            }.on(:submit) do |evt|
              evt.prevent_default
              puts evt.current_target.inspect
            end
          end
				end
			end
    end
  end
end
