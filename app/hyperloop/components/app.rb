class App < Hyperloop::Router
  Cordova = Native(`global.Cordova`)
  history Cordova ? :hash : :browser

  route do
    DIV do
      MainNavigation {}

      MAIN(class_name: 'container') do

        Switch do
          Route('/', exact: true, mounts: Home)
          Route('/about', mounts: About) # mount the wrapped lazy loading component
          Route('',  exact: true) { Redirect('/') } if Cordova
        end

        # define routes using the Route psuedo component.  Examples:
        # Route('/foo', mounts: Foo)                : match the path beginning with /foo and mount component Foo here
        # Route('/foo') { Foo(...) }                : display the contents of the block
        # Route('/', exact: true, mounts: Home)     : match the exact path / and mount the Home component
        # Route('/user/:id/name', mounts: UserName) : path segments beginning with a colon will be captured in the match param
        # see the hyper-router gem documentation for more details
      end
    end
  end
end
