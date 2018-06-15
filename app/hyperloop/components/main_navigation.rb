class MainNavigation < Hyperloop::Router::Component
	render(:div) do
		UL do
			LI { Link('/') { 'Home' } }
			LI { Link('/about') { 'About' } }
		end
	end
end
