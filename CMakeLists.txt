cmake_minimum_required(VERSION 3.17)
project(m04_view_projection)

link_libraries(cs4722  glfw3 opengl32 glu32)

set(CMAKE_CXX_STANDARD 20)

include_directories(lib ../lib-common)
link_directories(lib ../lib-common)

configure_file(fragment_shader.glsl .)
configure_file(vertex_shader.glsl .)



add_executable(application main_driver.cpp)



