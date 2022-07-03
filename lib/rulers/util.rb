module Rulers
  def self.to_underscore(string)
    string.gsub(/::/, '/').
      gsub(/([A-Z]+)([A-Z][a-z])/,'\1_\2').
      gsub(/([a-z\d])([A-Z])/,'\1_\2').
      tr("-", "_").
      downcase
  end 
end

# To see how this works in Rails (at least in 7.0.3), see lines 84 - 103: https://github.com/rails/rails/blob/main/activesupport/lib/active_support/inflector/methods.rb

# def underscore(camel_cased_word)
#       return camel_cased_word.to_s unless /[A-Z-]|::/.match?(camel_cased_word)
#       word = camel_cased_word.to_s.gsub("::", "/")
#       word.gsub!(inflections.acronyms_underscore_regex) { "#{$1 && '_' }#{$2.downcase}" }
#       word.gsub!(/([A-Z]+)(?=[A-Z][a-z])|([a-z\d])(?=[A-Z])/) { ($1 || $2) << "_" }
#       word.tr!("-", "_")
#       word.downcase!
#       word
#     end
