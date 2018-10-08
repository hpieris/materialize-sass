module Materialize
  module Sass
    class Engine < ::Rails::Engine
      initializer 'materialize-sass.assets.precompile' do |app|
        %w(stylesheets javascripts fonts images).each do |sub|
          app.config.assets.paths << root.join('app/', sub).to_s
        end
        app.config.assets.precompile << %r(material-design-icons/Material-Design-Icons\.(?:eot|svg|ttf|woff|woff2?)$)
        app.config.assets.precompile << %r(roboto/Roboto-[\w-]+\.(?:eot|svg|ttf|woff|woff2?)$)
        app.config.assets.precompile << %r(siftone-cust-icons/siftone-cust-icons.eot)
        app.config.assets.precompile << %r(siftone-cust-icons/siftone-cust-icons.svg)
        app.config.assets.precompile << %r(siftone-cust-icons/siftone-cust-icons.ttf)
        app.config.assets.precompile << %r(siftone-cust-icons/siftone-cust-icons.woff?)
      end
    end
  end
end
