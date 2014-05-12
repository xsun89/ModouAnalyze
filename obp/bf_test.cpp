#include <boost/bind.hpp>
#include <boost/function.hpp>
#include <iostream>

using namespace std;
using namespace boost;

class Foo
{
public:
    void MemberFunc(double d, int i, int j)
	{
		cout << d << endl;//0.5
		cout << i << endl;//100
		cout << j << endl;//10
	}
};

int main()
{
    Foo foo;
    function<void (int, int)> f1 = bind(&Foo::MemberFunc, &foo, 0.5, _1, _2);
    f1(35, 25);

    return 0;
}