require "ini"
require "json"
require "mime"
require "option_parser"
require "uri"
require "uuid"
require "yaml"

module Chaos
  private class Error
    # Generates a random error message

    def self.raise
      # Sample error types
      error_types = [

        # crystal/src/exception.cr
        -> { raise IndexError.new("CHAOS: Index error") },
        -> { raise ArgumentError.new("CHAOS: Invalid argument") },
        -> { raise TypeCastError.new("CHAOS: Type cast error") },
        -> { raise InvalidByteSequenceError.new("CHAOS: Invalid byte sequence error") },
        -> { raise KeyError.new("CHAOS: Key error") },
        -> { raise DivisionByZeroError.new("CHAOS: Division by zero error") },
        -> { raise OverflowError.new("CHAOS: Overflow error") },
        -> { raise NotImplementedError.new("CHAOS: Not implemented error") },
        -> { raise NilAssertionError.new("CHAOS: Nil assertion error") },
        -> { raise RuntimeError.new("CHAOS: Runtime error") },

        # crystal/src/base64.cr
        -> { raise Base64::Error.new("CHAOS: Base64 error") },

        # crystal/src/channel.cr
        -> { raise Channel::ClosedError.new("CHAOS: Channel closed error") },

        # crystal/src/enumerable.cr
        -> { raise Enumerable::EmptyError.new("CHAOS: Enumerable empty error") },
        -> { raise Enumerable::NotFoundError.new("CHAOS: Enumerable not found error") },

        # crystal/src/file.cr
        -> { raise File::BadPatternError.new("CHAOS: File bad pattern error") },

        # crystal/src/ini.cr
        -> { raise INI::ParseException.new("CHAOS: INI parse error", 1, 1) },

        # crystal/src/json.cr
        -> { raise JSON::Error.new("CHAOS: JSON error") },
        -> { raise JSON::ParseException.new("CHAOS: JSON error", 1, 1) },

        # crystal/src/mime.cr
        -> { raise MIME::Error.new("CHAOS: MIME error") },

        # crystal/src/option_parser.cr
        -> { raise OptionParser::InvalidOption.new("CHAOS: Invalid option error") },
        -> { raise OptionParser::MissingOption.new("CHAOS: Missing option error") },

        # crystal/src/path.cr
        -> { raise Path::Error.new("CHAOS: Path error") },

        # crystal/src/regex.cr
        -> { raise Regex::Error.new("CHAOS: Regex error") },

        # crystal/src/time.cr
        -> { raise Time::Error.new("CHAOS: Time error") },
        -> { raise Time::FloatingTimeConversionError.new("CHAOS: Time error") },

        # crystal/src/uri.cr
        -> { raise URI::Error.new("CHAOS: URI error") },

        # crystal/src/uuid.cr
        -> { raise UUID::Error.new("CHAOS: UUID error") },

        # crystal/src/yaml.cr
        -> { raise YAML::Error.new("CHAOS: YAML error") },
        -> { raise YAML::ParseException.new("CHAOS: YAML error", 1, 1) },

        # Generic Error
        -> { raise Exception.new("CHAOS: Generic error") },
      ]

      # Select a random error from sample
      error_types.sample.call
    end
  end
end
