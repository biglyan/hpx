# Copyright (c) 2007-2011 Hartmut Kaiser
# Copyright (c) 2011      Bryce Lelbach
#
# Distributed under the Boost Software License, Version 1.0. (See accompanying 
# file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)

set(HPX_ADDLIBRARYSOURCES_LOADED TRUE)

hpx_include(Message)

macro(add_hpx_library_sources name)
  foreach(source ${ARGN})
    get_filename_component(absolute_path ${source} ABSOLUTE)
    hpx_debug("add_library_sources.${name}"
              "Adding ${absolute_path} to source list for lib${name}")
    set(${name}_SOURCES ${${name}_SOURCES} ${absolute_path}
      CACHE INTERNAL "Sources for lib${name}." FORCE)
  endforeach()
endmacro()

