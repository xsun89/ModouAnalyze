#ifndef _THREAD_H_
#define _THREAD_H_
#include <pthread.h>

class Thread
{
public:
    Thread();
    void Start();
    void Join();
    virtual ~Thread();
    void SetAutoDelete(bool autoDelete);
private:
    virtual void Run() = 0;
    pthread_t threadId_;
    bool autoDelete_;
    static void* ThreadRoutine(void* arg);
};


#endif