require "../lib/libinjection.cr"

module Libinjection

  class SqliScan

    def self.contains_sqli?(data)
      raise "NilData" if data.nil?
      if data
        raise "EmptyData" if data.empty?
        sfilter :: Lib_injection::SFilter
        Lib_injection.libinjection_init(pointerof(sfilter), data, data.bytesize, 0)
        result = Lib_injection.libinjection_is_sqli?(pointerof(sfilter))
        if result == 0
          return false
        elsif result == 1
          return true
        else
          return false
        end
      else
        return false
      end
    end
  end
end