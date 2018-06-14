class Lazy < Hyperloop::Router::Component
  render do
    DIV do
      DIV { "Soooo lazy!" }
      BR()
      Link('/app') { 'Click to be busy' }
    end
  end
end