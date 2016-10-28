using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace hackerrank30
{
    class RecursionFactorial
    {
        static void Main(String[] args)
        {
            /* Enter your code here. Read input from STDIN. Print output to STDOUT. Your class should be named Solution */
            int n = int.Parse(Console.ReadLine());
            int result = factorial(n);
            Console.WriteLine(result);
            Console.ReadLine();
        }
        public static int factorial(int k)
        {
            if (k > 1)
            {
                return k * factorial(k - 1);

            }
            else
            {
                return 1;
            }
        }
    }
}
