require "libinjection.cr"

module Libinjection

  class SqliScan

    def self.contains_sqli?(data : String)

      raise "EmptyData" if data.empty?
      sfilter :: Lib_injection::SFilter
      Lib_injection.libinjection_init(pointerof(sfilter), data, data.bytesize, 0)
      result = Lib_injection.libinjection_is_sqli?(pointerof(sfilter))
      return false if result == 0
      true
    end
  end
end