require "erubis"

template = <<TEMPLATE
Hello! This is a template. It has <%= code %> embedded!
TEMPLATE

eruby = Erubis::Eruby.new(template)
puts eruby.src
puts "========="
puts eruby.result(:code => "~magic~")
