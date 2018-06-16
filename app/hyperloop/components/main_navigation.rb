class MainNavigation < Hyperloop::Router::Component
  render do
    NAV do
      DIV(class_name: 'nav-wrapper') do
        Link('/', class_name: 'brand-logo') { 'Home' }

        UL do
          LI { Link('/') { 'Home' } }
          LI { Link('/about') { 'About' } }
        end
      end
    end
  end
end
