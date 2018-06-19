class App < Hyperloop::Router
  history :browser

  before_mount do
    # any initialization particularly of state variables goes here.
    # this will execute on server (prerendering) and client.
  end

  after_mount do
    # any client only post rendering initialization goes here.
    # i.e. start timers, HTTP requests, and low level jquery operations etc.

    $$.Materialize.AutoInit
  end

  before_update do
    # called whenever a component will be re-rerendered
  end

  before_unmount do
    # cleanup any thing (i.e. timers) before component is destroyed
  end

  route do
    DIV do
      MainNavigation {}

      MAIN(class_name: 'container') do
        Switch do
          Route('/home', exact: true, mounts: Home)
          Route('/about', mounts: About)
          Route('',  exact: true) { Redirect('/home', replace: true) } if $$.Cordova
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
