using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ConsoleApplication1{
    class Program{
        static void Main(string[] args){
            //Url list in an array
            string[] url = new string[]{
                "sword.html",
                "sword.css",
                "shield.html",
                "shield.css"
            };

            string css = ".css"; // I want to find urls that ends with .css
            Console.WriteLine("Cascading Style Sheet urls:");
            for(int i=0; i<url.Length; i++){
                if(url[i].EndsWith(css)){ // If url ends with .css
                    Console.WriteLine(url[i]); // then display that url
                }
            }
            Console.ReadLine(); // waiting for ome action
        }
    }
}
