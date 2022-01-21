#include <string>

using namespace std;
class Solution {
    public String addStrings(String num1, String num2) {
        
        StringBuilder sb = new StringBuilder();
        
        int carry = 0;
        
        int i = num1.length()-1;
        int j = num2.length()-1;
        
        while(i>=0 || j>=0)
        {
            int t = carry;
            
            if(i>=0)
            {
                t+=num1.charAt(i)-'0';
            }
            if(j>=0)
            {
                t+=num2.charAt(j)-'0';
            }
            
            sb.append(t%10);
            carry = t/10;
            
            i--;
            j--;
            
        }
        
        if(carry!=0)
        {
            sb.append(carry);
        }
        
        return sb.reverse().toString();
    }
}
