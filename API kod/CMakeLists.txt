cmake_minimum_required(VERSION 3.15)
project(GameShop)

set(CMAKE_CXX_STANDARD 14)

add_executable(GameShop main.cpp)

INCLUDE_DIRECTORIES(/Users/mh-mbp/Applications/SQLAPI/include)

LINK_DIRECTORIES(/Users/mh-mbp/Applications/SQLAPI/lib)

TARGET_LINK_LIBRARIES(GameShop /Users/mh-mbp/Applications/SQLAPI/lib/libsqlapi.a)

target_link_libraries(GameShop ${CMAKE_DL_LIBS})