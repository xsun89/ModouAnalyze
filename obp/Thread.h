#ifndef _THREAD_H_
#define _THREAD_H_
#include <pthread.h>
#include <boost/function.hpp>

typedef boost::function<void ()> ThreadFunc;

class Thread
{
public:
    explicit Thread(const ThreadFunc& func);
    void Start();
    void Join();
    virtual ~Thread();
    void SetAutoDelete(bool autoDelete);
private:
    void Run();
    pthread_t threadId_;
    bool autoDelete_;
    static void* ThreadRoutine(void* arg);
    ThreadFunc func_;
};


#endif