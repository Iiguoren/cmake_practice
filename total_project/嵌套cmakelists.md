# 多个Cmakelists构建工程
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
add_library(AnimalLib src/cat.cpp src/dog.cpp)
```
会将cat和dog两个对象封装为LibAnimalLib.a的静态库文件，同时会将库文件的目录智能添加到library中。
## 主目录CMakeLists:
```cpp
cmake_minimum_required(VERSION 3.20.0)
project(Animal CXX)

add_subdirectory(animal)
# 在编译时会寻找animal文件夹的CMakeLists文件并编译
add_executable(Animal main.cpp)
target_link_libraries(Animal PUBLIC AnimalLib)
# 由于使用 add_subdirectory 指令时，它会自动将子目录中生成的库文件路径添加到编译器和链接器的搜索路径中。
target_include_directories(Animal PUBLIC  "${PROJECT_SOURCE_DIR}/animal/include")
```
**注**：
* 目标定义先于库链接：add_executable 必须在 target_link_libraries 之前。CMake 必须先知道要创建哪个目标（可执行文件或库），然后才能为该目标指定链接的库。如果你在 CMakeLists.txt 文件中先调用 target_link_libraries，但此时 CMake 还不知道目标 Animal 的存在，它将会报错。
* 链接依赖：在 add_executable 之后调用 target_link_libraries，CMake 才能明确这个可执行文件需要链接哪些库。这样，链接器在链接阶段才能正确地找到并链接所需的库文件。
### 使用库文件有以下优点：
* **代码重用**：库文件允许开发者将常用功能封装起来，以便在多个项目中重用，从而减少重复代码。
* **模块化**：库文件将代码分割成独立的模块，使得代码结构更清晰、维护更方便。
* **减少编译时间**：使用库文件可以减少重新编译代码的时间，因为库文件中的代码通常只需要编译一次。
* **封装实现细节**：库文件可以隐藏实现细节，只暴露接口，从而保护代码的实现和提高安全性。