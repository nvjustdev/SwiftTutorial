//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var str2 = "abc"
let num : Int = 3 //Constant
print(num)

var num1 = 6
var num2 = 12

print(num1 + num)
print(num1 - num2)
print(num1 * num2)
print(num1 / num2)
print(num1 % num2)

sqrt(2.0)
Double.pi / 2
max(sqrt(2.0), Double.pi / 2)

class Movie {
    var title: String = ""
    var genre: String?
    
    init(title: String) {
        self.title = title
    }
    
    func getMovieTitle() -> String {
        return title
    }
}


var movie = Movie(title:"Nice Movie You Can Watch")
print("The title of the movie is \(movie.getMovieTitle())")

