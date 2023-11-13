# Parent project does not export its library target, so this CML implicitly
# depends on being added from it, i.e. the testing is done only from the build
# tree and is not feasible from an install location

project(programprojectTests LANGUAGES CXX)

# ---- Tests ----

add_executable(programproject_test source/programproject_test.cpp)
target_link_libraries(programproject_test PRIVATE programproject_lib)
target_compile_features(programproject_test PRIVATE cxx_std_20)

add_test(NAME programproject_test COMMAND programproject_test)

# ---- End-of-file commands ----

add_folders(Test)
