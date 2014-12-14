module Fluent
  module TextFormatter
    class TSVFormatter < Formatter
      Plugin.register_formatter('tsv', self)

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
