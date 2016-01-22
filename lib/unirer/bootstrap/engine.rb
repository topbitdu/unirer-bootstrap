module Unirer
  module Bootstrap

    class Engine < ::Rails::Engine

      config.autoload_paths += %W(
        #{config.root}/lib
        #{config.root}/app/controllers/unirer/bootstrap/concerns
        #{config.root}/app/models/unirer/bootstrap/concerns
      )

      config.eager_load_paths += %W(
        #{config.root}/lib
        #{config.root}/app/controllers/unirer/bootstrap/concerns
        #{config.root}/app/models/unirer/bootstrap/concerns
      )

      isolate_namespace Unirer::Bootstrap

    end

  end
end
