require "../lib/libinjection.cr"

module Libinjection

  class SqliScan

    def self.string(data)
      raise "NilString" if data.nil?
      raise "EmptyString" if data.empty?
      ptr = Pointer(Void).malloc(10)
      Lib_injection.libinjection_init(ptr, data, data.bytesize, 0)
      Lib_injection.libinjection_is_sqli?(ptr)
    end
  end
end