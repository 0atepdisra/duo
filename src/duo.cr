require "./duo/client"
require "./duo/server"

module Duo
  VERSION                     = "0.1.0"
  Log                         = ::Log.for("Duo (Duo)")
  DEFAULT_PRIORITY            = Priority.new(false, 0, 16)
  CLIENT_PREFACE              = "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n"
  MINIMUM_FRAME_SIZE          =      16384 # 2 ** 14
  MAXIMUM_FRAME_SIZE          =   16777215 # 2 ** 24 - 1
  MINIMUM_WINDOW_SIZE         =          1
  MAXIMUM_WINDOW_SIZE         = 2147483647 # 2 ** 31 - 1
  PING_FRAME_SIZE             =          8
  PRIORITY_FRAME_SIZE         =          5
  RST_STREAM_FRAME_SIZE       =          4
  WINDOW_UPDATE_FRAME_SIZE    =          4
  DEFAULT_HEADER_TABLE_SIZE   =       4096
  DEFAULT_ENABLE_PUSH         = true
  DEFAULT_INITIAL_WINDOW_SIZE = 65535
  DEFAULT_MAX_FRAME_SIZE      = MINIMUM_FRAME_SIZE
  REQUEST_PSEUDO_HEADERS      = %w(:method :scheme :authority :path)
  RESPONSE_PSEUDO_HEADERS     = %w(:status)
end
