require_relative '../base_generator'

module Ng
  class ModuleGenerator < Rails::Generators::Base
    include BaseGenerator

    def copy_binding_file
      template 'module.js.coffee.erb',
               "#{module_path}/index.js.coffee"
    end

    def module_parts
      raw_parts.map { |n| n.camelcase(:lower) }
    end
  end
end
