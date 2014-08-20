union Number {
    int    i;
    double d;
};

enum NumberType { INT, DOUBLE };

struct TaggedNumber {
    enum  NumberType type;
    union Number     number;
};

int
main(void)
{
    union  Number       n1 = {.i = 5};
    struct TaggedNumber n2 = {DOUBLE, {.d = 1.23}};
    return 0;
}
