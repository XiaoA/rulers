module Rulers
  class View
    def set_vars(instance_vars)
      instance_vars.each do |name, value|
        instance_variable_set(name, value)
      end
    end

    def evaluate(template)
      eruby = Erubis::Eruby.new(template)
      eval eruby.src
    end

    def h(string)
      URI.escape string
    end
  end
end
