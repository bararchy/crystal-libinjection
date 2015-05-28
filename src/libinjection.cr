@[Link(ldflags: "-L../ext/libinjection.so -linjection")]
lib Lib_injection

  struct SFilter
    _data : UInt8[1024]
  end

  fun libinjection_init = libinjection_sqli_init(state: SFilter*, string: UInt8*, length: Int32, int: Int32) : Int32
  fun libinjection_is_sqli? = libinjection_is_sqli(state: SFilter*) : Int32

end
