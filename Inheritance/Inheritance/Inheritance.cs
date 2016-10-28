using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Inheritance
{
    class Inheritance
    {
        class Student : Person
        {
            private int[] testScores;
            public Student(string firstName, string lastName, int id, int[] scores)
            {
                this.firstName = firstName;
                this.lastName = lastName;
                this.id = id;
                this.testScores = scores;

            }
            public char calculate()
            {
                int sum = 0; int len = testScores.Length;
                for (int i = 0; i <= len - 1; i++)
                {
                    sum = sum + testScores[i];
                }
                int result = sum / len;
                if (result >= 90 && result <= 100)
                {
                    return 'O';
                }
                else if (result >= 80 && result < 90)
                {
                    return 'E';
                }
                else if (result >= 70 && result < 80)
                {
                    return 'A';
                }
                else if (result >= 55 && result < 70)
                {
                    return 'P';
                }
                else if (result >= 40 && result < 55)
                {
                    return 'D';
                }
                else
                {
                    return 'T';
                }
            }
        }
    }
}
