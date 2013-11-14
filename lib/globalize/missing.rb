require 'globalize/missing/version'

module Globalize
  module Missing
    def read_attribute(name, options = {})
      options = {:translated => true, :locale => nil}.merge(options)
      return super(name) unless options[:translated]

      if name == :locale
        self.try(:locale).presence || ( self.translation.locale unless self.translation.nil? )
      elsif self.class.translated?(name)
        if (value = globalize.fetch(options[:locale] || Globalize.locale, name))
          value
        else
          super(name)
        end
      else
        super(name)
      end
    end

    def translation_for(locale, build_if_missing = false)
      super
    end
  end

  module ActiveRecord
    module InstanceMethods
      prepend Missing
    end
  end
end