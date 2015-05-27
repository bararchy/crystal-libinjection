require "../lib/libinjection.cr"

module Libinjection

  class SqliScan

    def self.string(data)
      raise "NilString" if data.nil?
      raise "EmptyString" if data.empty?
      ptr = Pointer(String).malloc(10)
      Libinjection.libinjection_init(ptr, data, data.bytesize, 0)
      Libinjection.libinjection_is_sqli?(ptr)
    end
  end
end