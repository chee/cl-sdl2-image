(cl:in-package :sdl2-ffi)

(autowrap:c-include
 `(sdl2-image autowrap-spec "SDL_image.h")
  :function-package :sdl2-ffi.functions
  :spec-path '(sdl2-image autowrap-spec)
  :exclude-sources ("/usr/local/lib/clang/([^/]*)/include/(?!stddef.h)"
                    "/usr/include/"
                    "/usr/include/arm-linux-gnueabihf"
                    "/usr/local/include/SDL2")
  :include-sources ("SDL_image.h")
  :sysincludes `,(uiop:split-string (uiop:getenv "EXTRA_INCLUDES") :separator " ")
  :exclude-constants ("^__")
  :symbol-exceptions (("SDL_RWops" . "SDL-RWOPS"))
  :no-accessors cl:t
  :release-p cl:t)
