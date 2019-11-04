#include<iostream> 
#include<cmath>
using namespace std;

int main()
{ 
    int sum = 0;
    int num;
    int temp;
    int numDigits = 0;
    int digit = 0;
    int divisor;
    cout << "Enter a number: ";
    cin >> num;
    
    
    num = abs(num);
    temp = num;
    while (temp > 0)
    {
       temp/=10;
       numDigits++;
    }
    
    while (num > 0)
    {
        digit = num / pow(10, numDigits-1);
        cout << digit << " ";
        divisor = pow(10, numDigits-1);
        num = num % divisor;
        sum = sum + digit;
        numDigits--;
    }
    cout << endl;
    cout << sum;
    return 0;
 
}
