# frozen_string_literal: true

module PostnummerNorge
  VERSION = File.read(File.expand_path("../../VERSION", __dir__)).strip unless PostnummerNorge.const_defined?(:VERSION)
end
