class Loadable < Hyperloop::Component
  param :loadable

  before_mount do
    @loadables = Array.wrap(params.loadable)
  end

  render do
    DIV do
      children.each do |child|
        child.render
      end

      if @loadables.any? { |loadable| loadable.loading? }
        Spinner {}
      end
    end
  end
end
