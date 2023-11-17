# Fetch libproj source code from Github

include(FetchContent)

SET(FETCHCONTENT_QUIET NO)
SET(BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)
SET(ENABLE_TESTS OFF OFF CACHE BOOL "" FORCE)

FetchContent_Declare(
  libraryproject
  GIT_REPOSITORY              https://github.com/la-glace-et-l-eau/libraryproject
  GIT_TAG                     origin/main
  GIT_SHALLOW                 1
  GIT_PROGRESS                1
  GIT_REMOTE_UPDATE_STRATEGY  CHECKOUT
)

FetchContent_MakeAvailable(libraryproject)

message("Fetched libraryproject source code from Github: ${libraryproject_SOURCE_DIR}")
include_directories(
  ${libraryproject_SOURCE_DIR}
  ${libraryproject_BINARY_DIR}
)

