# Fetch libproj source code from Github

include(FetchContent)

FetchContent_Declare(
  libraryproject
  GIT_REPOSITORY https://github.com/la-glace-et-l-eau/libraryproject
  GIT_TAG        main
)

FetchContent_MakeAvailable(libraryproject)

message("Fetched libraryproject source code from Github: ${libraryproject_SOURCE_DIR}")
include_directories(
  ${libraryproject_SOURCE_DIR}
  ${libraryproject_BINARY_DIR}
)


    if(NOT CMAKE_BUILD_TYPE)
      set(CMAKE_BUILD_TYPE "Release")
    endif()

    set(CMAKE_MODULE_PATH
            CACHE INTERNAL
            FORCE
            )

    set(FMT_HEADERS
            CACHE INTERNAL
            FORCE
            )

    set(FMT_OS OFF
            CACHE INTERNAL
            "Path to downloaded Catch2 modules"
            FORCE
            )


FetchContent_Declare(
  fmt
  GIT_REPOSITORY https://github.com/fmtlib/fmt.git
  GIT_TAG        master
)

FetchContent_MakeAvailable(fmt)

set_target_properties(fmt PROPERTIES CXX_STANDARD 20)
target_compile_options(fmt PUBLIC -Werror -Wno-deprecated-declarations)

message("Fetched fmt source code from Github: ${fmt_SOURCE_DIR}")
include_directories(
  ${fmt_SOURCE_DIR}
  ${fmt_BINARY_DIR}
)

