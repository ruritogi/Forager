using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Project1
{
    class Class1
    {
        public static void Main(string[] args)
        {
            //Url list in an array
            string[] url = new string[]
			{
                "http://www.sword.html",
                "https://www.sword.css",
                "https://www.shield.html",
                "http://www.shield.css"
            };

            string https = "https://"; // I want to find urls that starts with http://
            Console.WriteLine("SSL encrypt urls:");
            for (int i = 0; i < url.Length; i++)
            {
                if (url[i].StartsWith(https))
                { // If url starts with https
                    Console.WriteLine(url[i]); // then display that url
                }
            }
            Console.ReadLine(); // waiting for some action
        }
    }
}