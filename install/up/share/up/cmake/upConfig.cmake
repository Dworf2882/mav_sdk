# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_up_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED up_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(up_FOUND FALSE)
  elseif(NOT up_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(up_FOUND FALSE)
  endif()
  return()
endif()
set(_up_CONFIG_INCLUDED TRUE)

# output package information
if(NOT up_FIND_QUIETLY)
  message(STATUS "Found up: 0.0.0 (${up_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'up' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${up_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(up_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${up_DIR}/${_extra}")
endforeach()
