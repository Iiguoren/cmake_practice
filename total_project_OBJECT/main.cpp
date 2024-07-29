#include <iostream>
#include "cat.h"
#include "dog.h"
#include "config.h"

int main(int argc ,char const *argv[]){
    Dog dog;
    Cat cat;
    std::cout<<dog.barking()<<std::endl;
    std::cout<<cat.barking()<<std::endl;
    std::cout<<CMAKECHAR<<std::endl;
}