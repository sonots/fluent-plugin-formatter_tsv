module Fluent
  module TextFormatter
    register_template("tsv", Proc.new { TSVFormatter.new })
  
    class TSVFormatter
      # Fluent::Plugin.register_formatter('tsv', self) # will be like this

      include Configurable # This enables the use of config_param
      include HandleTagAndTimeMixin # If you wish to use tag_key, time_key, etc.

      def configure(conf)
        super
      end

      def format(tag, time, record)
        "#{record.values.join("\t")}\n"
      end
    end
  end
end
