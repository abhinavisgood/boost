# Generated by Boost 1.81.0

# address-model=64

if(CMAKE_SIZEOF_VOID_P EQUAL 4)
  _BOOST_SKIPPED("libboost_test_exec_monitor-mgw12-mt-x64-1_81.a" "64 bit, need 32")
  return()
endif()

# layout=versioned

# toolset=mgw12

if(Boost_COMPILER)
  if(NOT Boost_COMPILER STREQUAL "mgw12" AND NOT Boost_COMPILER STREQUAL "-mgw12")
    _BOOST_SKIPPED("libboost_test_exec_monitor-mgw12-mt-x64-1_81.a" "mgw12, Boost_COMPILER=${Boost_COMPILER}")
    return()
  endif()
else()
  if(BOOST_DETECTED_TOOLSET AND NOT BOOST_DETECTED_TOOLSET STREQUAL "mgw12")
    _BOOST_SKIPPED("libboost_test_exec_monitor-mgw12-mt-x64-1_81.a" "mgw12, detected ${BOOST_DETECTED_TOOLSET}, set Boost_COMPILER to override")
    return()
  endif()
endif()

# link=static

if(DEFINED Boost_USE_STATIC_LIBS)
  if(NOT Boost_USE_STATIC_LIBS)
    _BOOST_SKIPPED("libboost_test_exec_monitor-mgw12-mt-x64-1_81.a" "static, Boost_USE_STATIC_LIBS=${Boost_USE_STATIC_LIBS}")
    return()
  endif()
else()
  if(NOT WIN32 AND NOT _BOOST_SINGLE_VARIANT)
    _BOOST_SKIPPED("libboost_test_exec_monitor-mgw12-mt-x64-1_81.a" "static, default is shared, set Boost_USE_STATIC_LIBS=ON to override")
    return()
  endif()
endif()

# runtime-link=shared

if(Boost_USE_STATIC_RUNTIME)
  _BOOST_SKIPPED("libboost_test_exec_monitor-mgw12-mt-x64-1_81.a" "shared runtime, Boost_USE_STATIC_RUNTIME=${Boost_USE_STATIC_RUNTIME}")
  return()
endif()

# runtime-debugging=off

if(Boost_USE_DEBUG_RUNTIME)
  _BOOST_SKIPPED("libboost_test_exec_monitor-mgw12-mt-x64-1_81.a" "release runtime, Boost_USE_DEBUG_RUNTIME=${Boost_USE_DEBUG_RUNTIME}")
  return()
endif()

# threading=multi

if(DEFINED Boost_USE_MULTITHREADED AND NOT Boost_USE_MULTITHREADED)
  _BOOST_SKIPPED("libboost_test_exec_monitor-mgw12-mt-x64-1_81.a" "multithreaded, Boost_USE_MULTITHREADED=${Boost_USE_MULTITHREADED}")
  return()
endif()

# variant=release

if(NOT "${Boost_USE_RELEASE_LIBS}" STREQUAL "" AND NOT Boost_USE_RELEASE_LIBS)
  _BOOST_SKIPPED("libboost_test_exec_monitor-mgw12-mt-x64-1_81.a" "release, Boost_USE_RELEASE_LIBS=${Boost_USE_RELEASE_LIBS}")
  return()
endif()

if(Boost_VERBOSE OR Boost_DEBUG)
  message(STATUS "  [x] libboost_test_exec_monitor-mgw12-mt-x64-1_81.a")
endif()

# Create imported target Boost::test_exec_monitor

if(NOT TARGET Boost::test_exec_monitor)
  add_library(Boost::test_exec_monitor STATIC IMPORTED)

  set_target_properties(Boost::test_exec_monitor PROPERTIES
    INTERFACE_INCLUDE_DIRECTORIES "${_BOOST_INCLUDEDIR}"
    INTERFACE_COMPILE_DEFINITIONS "BOOST_TEST_EXEC_MONITOR_NO_LIB"
  )
endif()

# Target file name: libboost_test_exec_monitor-mgw12-mt-x64-1_81.a

get_target_property(__boost_imploc Boost::test_exec_monitor IMPORTED_LOCATION_RELEASE)
if(__boost_imploc)
  message(SEND_ERROR "Target Boost::test_exec_monitor already has an imported location '${__boost_imploc}', which is being overwritten with '${_BOOST_LIBDIR}/libboost_test_exec_monitor-mgw12-mt-x64-1_81.a'")
endif()
unset(__boost_imploc)

set_property(TARGET Boost::test_exec_monitor APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)

set_target_properties(Boost::test_exec_monitor PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE CXX
  IMPORTED_LOCATION_RELEASE "${_BOOST_LIBDIR}/libboost_test_exec_monitor-mgw12-mt-x64-1_81.a"
  )

set_target_properties(Boost::test_exec_monitor PROPERTIES
  MAP_IMPORTED_CONFIG_MINSIZEREL Release
  MAP_IMPORTED_CONFIG_RELWITHDEBINFO Release
  )

list(APPEND _BOOST_TEST_EXEC_MONITOR_DEPS headers)
