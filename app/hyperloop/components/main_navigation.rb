class MainNavigation < Hyperloop::Router::Component
  render do
    NAV do
      DIV(class_name: 'nav-wrapper') do
        Link('/home', class_name: 'brand-logo') { 'Home' }

        UL do
          LI { Link('/home') { 'Home' } }
          LI { Link('/about') { 'About' } }
        end
      end
    end
  end
end
