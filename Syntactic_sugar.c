int
main(void)
{
    // arr[i] is syntactic sugar for *(arr + i)
    int arr[]  = {1, 2, 3};
    int bitter = *(arr + 1); // no sugar
    int sweet  = arr[1];     // syntactic sugar
    return 0;
}
