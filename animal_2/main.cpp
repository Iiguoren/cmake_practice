#include <iostream>
#include "cat.h"
#include "dog.h"
int main(int argc ,char const *argv[]){
    Dog dog;
    Cat cat;
    std::cout<<dog.barking()<<std::endl;
    std::cout<<cat.barking()<<std::endl;
}