install(
    TARGETS programproject_exe
    RUNTIME COMPONENT programproject_Runtime
)

if(PROJECT_IS_TOP_LEVEL)
  include(CPack)
endif()
