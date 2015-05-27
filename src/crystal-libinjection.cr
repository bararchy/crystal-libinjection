require "../lib/libinjection.cr"

module Libinjection

  class SqliScan

    def self.string(data)
      raise "NilString" if data.nil?
      raise "EmptyString" if data.empty?
      sfilter :: Lib_injection::SFilter
      Lib_injection.libinjection_init(pointerof(sfilter), data, data.bytesize, 0)
      Lib_injection.libinjection_is_sqli?(pointerof(sfilter))
    end
  end
end