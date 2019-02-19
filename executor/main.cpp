#include <iostream>

// int main()
// {
//     std::cout<<"Hello World!\n";
//     return 0;
// }
class ClassExample {
public:
    void run() {
         std::cout << "Hello world" << std::endl;
    }
};

int main() { // This is the main entry point of a program.
    ClassExample x;
    x.run(); 
}
