cmake_minimum_required(VERSION 3.14)

include(cmake/prelude.cmake)
include(cmake/FetchLib2.cmake)

project(
    programproject
    VERSION 0.1.0
    DESCRIPTION "good 2"
    HOMEPAGE_URL "https://example.com/"
    LANGUAGES CXX
)

include(cmake/project-is-top-level.cmake)
include(cmake/variables.cmake)

# ---- Declare library ----

add_library(
    programproject_lib OBJECT
    source/lib.cpp
)

target_include_directories(
    programproject_lib ${warning_guard}
    PUBLIC
    "$<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}/source>"
)

target_compile_features(programproject_lib PUBLIC cxx_std_20)

target_link_libraries(programproject_lib INTERFACE libraryproject_libraryproject)

# ---- Declare executable ----

add_executable(programproject_exe source/main.cpp)
add_executable(programproject::exe ALIAS programproject_exe)

set_property(TARGET programproject_exe PROPERTY OUTPUT_NAME programproject)

target_compile_features(programproject_exe PRIVATE cxx_std_20)

target_link_libraries(programproject_exe PRIVATE programproject_lib)

# ---- Install rules ----

if(NOT CMAKE_SKIP_INSTALL_RULES)
  include(cmake/install-rules.cmake)
endif()

# ---- Developer mode ----

if(NOT programproject_DEVELOPER_MODE)
  return()
elseif(NOT PROJECT_IS_TOP_LEVEL)
  message(
      AUTHOR_WARNING
      "Developer mode is intended for developers of programproject"
  )
endif()

include(cmake/dev-mode.cmake)
