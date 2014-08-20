#include <iostream>

// A namespace named a
namespace a {
    char foo() { return 'a'; }
}

// Another namespace, its foo function does not clash with a::foo
namespace b {
    char foo() { return 'b'; }
}

// A function in the global namespace, also no clash
char foo() { return '-'; }

int
main()
{
    std::cout <<    foo() << "\n"; // prints '-'
    std::cout <<  ::foo() << "\n"; // prints '-'
    std::cout << a::foo() << "\n"; // prints 'a'
    std::cout << b::foo() << "\n"; // prints 'b'

    using namespace a; // dump a into this function's namespace
    // The following would cause a compile error because foo() is ambiguous.
    // std::cout << foo() << "\n";
    std::cout <<  ::foo() << "\n"; // prints '-'
    std::cout << a::foo() << "\n"; // prints 'a'
    std::cout << b::foo() << "\n"; // prints 'b'
}
