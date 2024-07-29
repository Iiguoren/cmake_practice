# 使用OBJECT库文件构建工程
## 项目结构：
**total_project**
├── CMakeLists.txt
├── main.cpp
├── animal/
│   ├── CMakeLists.txt
│   ├── include/
│   │   ├── cat.h
│   │   └── dog.h
│   └── src/
│       ├── cat.cpp
│       └── dog.cpp
项目里面有animal子项目，子项目里的Cmakelists:
```cpp
include_directories(include)
add_library(AnimalLib OBJECT src/cat.cpp src/dog.cpp)
```
会将cat和dog两个编译的目标文件组织在一起，方便在其他目标中重用。并不会像静态库和动态库一样归档为.a和.dll文件
## 主目录CMakeLists:
```cpp
cmake_minimum_required(VERSION 3.20.0)
project(Animal CXX)

add_subdirectory(animal)
# 在编译时会寻找animal文件夹的CMakeLists文件并编译

configure_file(${CMAKE_SOURCE_DIR}/animal/include/config.h.in
${CMAKE_BINARY_DIR}/config.h)

add_executable(Animal main.cpp)
target_link_libraries(Animal PUBLIC AnimalLib)
# 由于使用 add_subdirectory 指令时，它会自动将子目录中生成的库文件路径添加到编译器和链接器的搜索路径中。
target_include_directories(Animal PUBLIC  "${PROJECT_SOURCE_DIR}/animal/include")
```
**注**：
* 定义：对象库（OBJECT 类型库）是 CMake 中的一种特殊库类型，它将编译后的目标文件（.o 或 .obj 文件）组织在一起，但不创建最终的归档文件（如 .a 或 .lib 文件）。
* 目的：对象库的主要目的是将编译的目标文件整理在一起，以便在其他目标中使用。这种库不会生成实际的静态库文件，它只是一个编译后的中间结果。
* 使用：对象库中的目标文件可以在其他目标中链接，而不需要直接创建一个归档文件。这样可以在多个目标中共享编译结果，避免重复编译。
* **需要在cmake 3.17后版本使用。**


# configfile 宏与源文件交互
