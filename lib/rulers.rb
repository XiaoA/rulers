# frozen_string_literal: true

require_relative "rulers/version"
require_relative "rulers/array"
require_relative "rulers/routing"
require_relative "rulers/util"
require_relative "rulers/dependencies"

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
      [200, {'Content-Type' => 'text/html'},
       [text]]
    end
  end

  class Controller
    def initialize(env)
      @env = env
    end

    def env
      @env
    end    
  end
end
