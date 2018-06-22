class MainNavigation < Hyperloop::Router::Component
  render do
    NAV(role: 'navigation') do
      DIV(class_name: 'nav-wrapper container') do
        Link('/home', class_name: 'brand-logo') {
          IMG(src: '/assets/logo.png')
          'Hyperloop'
        }

        UL(class_name: 'right hide-on-med-and-down') do
          LI { Link('/home') { 'Home' } }
          LI { Link('/about') { 'About' } }
          LI { Link('/profile') { 'Profile' } }
        end

        A(href: '#', class_name: 'sidenav-trigger', 'data-target': 'nav-mobile') do
          I(class_name: 'material-icons') { 'menu' }
        end
      end

        UL(id: 'nav-mobile', class_name: 'sidenav') do
          LI { Link('/home', class_name: 'sidenav-close') { 'Home' } }
          LI { Link('/about', class_name: 'sidenav-close') { 'About' } }
          LI { Link('/profile', class_name: 'sidenav-close') { 'Profile' } }
        end
    end
  end
end
