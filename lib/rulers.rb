# frozen_string_literal: true

require_relative "rulers/version"
require_relative "rulers/array"
require_relative "rulers/routing"
require_relative "rulers/util"
require_relative "rulers/dependencies"
require_relative "rulers/controller"
require_relative "rulers/file_model"
require_relative "rulers/view"

module Rulers
  class Error < StandardError; end

  class Application
    def call(env)
      if env['PATH_INFO'] == '/favicon.ico'
        return [404,
                {'Content-Type' => 'text/html'}, []]
      end

      klass, act = get_controller_and_action(env)
      controller = klass.new(env)
      text = controller.send(act)
      r = controller.get_response
      if r
        [r.status, r.headers, [r.body].flatten]
      else
        [200, {'Content-Type' => 'text/html'},
         [text]]
      end
    end
  end
end
