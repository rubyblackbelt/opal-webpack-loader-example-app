class Spinner < Hyperloop::Router::Component
  render do
    DIV(class_name: 'spinner') do
      DIV(class_name: 'preloader-wrapper big active') do
        DIV(class_name: 'spinner-layer spinner-blue-only') do
          DIV(class_name: 'circle-clipper left') do
            DIV(class_name: 'circle') {}
          end
          DIV(class_name: 'gap-patch') do
            DIV(class_name: 'circle') {}
          end
          DIV(class_name: 'circle-clipper right') do
            DIV(class_name: 'circle') {}
          end
        end
      end
    end
  end
end
