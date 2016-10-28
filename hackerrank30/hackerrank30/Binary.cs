using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace hackerrank30
{
    class Binary
    {
        static void Main(String[] args)
        {
            int n = Convert.ToInt32(Console.ReadLine());
            string s = Convert.ToString(n, 2);
            //Console.WriteLine(s);
            int l = s.Length - 1;
            int[] ar = new int[100];
            int len = 0, j = 0;
            for (int i = 0; i < l; i++)
            {
                if (s[i] == '1' && s[i + 1] == '1')
                {
                    len++;
                    ar[j] = len;
                    j++;
                }
                else
                {


                    len = 0;
                }

            }

            Array.Sort(ar);
            Array.Reverse(ar);
            Console.WriteLine(ar[0] + 1);
        }
    }
}
