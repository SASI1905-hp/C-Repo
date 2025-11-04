#include <iostream>
#include <string>
using namespace std;

bool isPalindrome(string s) {
    int n = s.length();
    for (int i = 0; i < n / 2; i++) {
        if (s[i] != s[n - 1 - i])
            return false;
    }
    return true;
}

int main() {
    string str;
    cout << "Enter a string: ";
    cin >> str;
    
    if (isPalindrome(str))
        cout << str << " is a palindrome" << endl;
    else
        cout << str << " is not a palindrome" << endl;
    
    return 0;
}
