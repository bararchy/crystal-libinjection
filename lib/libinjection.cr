@[Link(ldflags: "-L../ext/libinjection.so -linjection")]
lib Lib_injection
  alias Sfilter = Void*

  fun libinjection_init = libinjection_sqli_init(state: Sfilter, string: UInt8*, length: Int32, int: Int32) : Int32
  fun libinjection_is_sqli? = libinjection_is_sqli(state: Sfilter) : Int32

end
