-- This file was automatically generated for the LuaDist project.

package="luars232"
version="1.0.3-3"

description = {
   summary = "Serial (RS-232) support",
   detailed = [[
      This module adds support for manipulation of the serial port in 
      Lua. It statically links librs232 (see the project homepage
      for the stand-alone library).
   ]],
   homepage = "https://github.com/ynezz/librs232/",
   license = "MIT/X11",
}

-- LuaDist source
source = {
  tag = "1.0.3-3",
  url = "git://github.com/LuaDist-testing/luars232.git"
}
-- Original source
-- source = {
--    url = "https://github.com/ynezz/librs232/archive/v1.0.3.zip",
--    dir = "librs232-1.0.3"
-- }

dependencies = {
   "lua ~> 5.1",
}

build = {
   type = "builtin",
   platforms = {
      unix = {
         modules = {
            luars232 = {
               sources = { "src/rs232.c", "src/rs232_posix.c", "bindings/lua/luars232.c" },
               incdirs = { "include" },
               defines = { "LUAROCKS_HACK -std=gnu99" },         
            }
         }
      },
      windows = {
         modules = {
            luars232 = {
               sources = { "src/rs232.c", "src/rs232_windows.c", "bindings/lua/luars232.c" },
               incdirs = { "include" },
            }
         }
      }
   }
}