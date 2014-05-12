#include "Thread.h"
#include <boost/bind.hpp>
#include <unistd.h>
#include <iostream>
using namespace std;

class Foo
{
public:
    Foo(int count) : count_(count)
    {
        cout << "Foo" << endl;
    }

    ~Foo()
    {
        cout << "~Foo" << endl;
    }

    void Memberfunc(int x)
    {
        while (count_--)
		{
			cout<<"x="<<x<<" this is a test2 ..."<<endl;
			sleep(1);
		}
    }

private:
    int count_;
};

void ThreadFuncTest()
{
	cout<<"ThreadFuncTest ..."<<endl;
}

void ThreadFuncTest2(int count)
{
	while (count--)
	{
		cout<<"ThreadFuncTest2 ..."<<endl;
		sleep(1);
	}
}

int main(void)
{
    Thread t1(ThreadFuncTest);
    Thread t2(boost::bind(ThreadFuncTest2, 3));
    Foo foo(3);
    Thread t3(boost::bind(&Foo::Memberfunc, &foo, 1000));
    t1.Start();
    t2.Start();
    t3.Start();
    t1.Join();
    t2.Join();
    t3.Join();
    
	return 0;
}