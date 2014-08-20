#include <mutex>

void
doStuffExclusively(std::mutex& mtx)
{
    std::lock_guard<std::mutex> lock(mtx); // acquire lock to mutex
    // do something interesting here
    // note that lock is not explicitly released
}

int
main()
{
    std::mutex mtx;
    doStuffExclusively(mtx);
    return 0;
}
