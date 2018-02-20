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

// Loop through all the characters in a string
var animal = "octopus"
for character in animal.characters {
    print ("\(character)")
}

let truth = "I am 😡"


var description = "the better looking Parkes brother"
var jarrod = description

jarrod == "the better looking Parkes brother"

1.0 == 1

let arrayOfInts = [10,8,9]
let biggerArrayOfInts = [6,5,4,3]

let arraySizeBool = arrayOfInts.count < biggerArrayOfInts.count

let anotherAlphabeticalBool = "xerox" > "xylophone"

var age = 29
let applySeniorDiscount = age >= 65


var finishedHomework = false
var schoolTomorrow = true
var notAllowedToPlayVideoGames = !finishedHomework && schoolTomorrow

var hungry = false
var isPie = true
var shouldEat = hungry || isPie

if shouldEat {
    print("Here's food")
}



print("Hi")


enum Genre: String {
    case country, blues, folk
}

struct Artist {
    let name: String
    var primaryGenre: Genre?
}

struct Song {
    let title: String
    let released: Int
    var artist: Artist?
}

func getArtistGenre(song: Song) -> String {
    let artistGenre = song.artist?.primaryGenre?.rawValue ?? ""
    return artistGenre
}

var artist = Artist(name: "somebody", primaryGenre: nil)
var song = Song(title: "some song", released: 1978, artist: artist)

print(getArtistGenre(song: song))

struct Villain {
    let name: String
    // exclamation point means implicitly unwrapped
    var evilScheme: String!
    
    func performScheme() {
        // no unwrapping necessary
        print("And now, I will \(evilScheme)!")
    }
}

var villain = Villain(name: "Billy", evilScheme: "steal from my cookie jar")
//villain.evilScheme = "steal from the cookie jar"
// we know for sure the scheme has been set
villain.performScheme()


func remove(input: String, first: Int, last: Int) -> String {
    // we require a variable to manipulate strings
    var newString = input
    // modify newString and return the result
    
    var i: Int = 0
    
    while (i < first) {
        newString.removeFirst()
        i += 1
    }
    
    i = 0
    
    while (i < last) {
        newString.removeLast()
        i += 1
    }
    
    return newString
}

remove(input: "Hi there... Ho ho", first:3, last:2)


let numbers = [1, 3, 1, 1, 2, 7, 3, 5, 8, 5, 4, 9]

func frequency(numbers: [Int]) -> [Int: Int] {
    var input = [Int: Int]()
    for numValue in numbers {
        input.updateValue((input[numValue] ?? 0) + 1, forKey: numValue)
    }
    
    return input
}

print(frequency(numbers: numbers))

class Guitar {
    let owner: String
    
    init(owner: String) {
        self.owner = owner
    }
    
    func printOwner() {
        print("\(self.owner)")
    }
}

class ElectricGuitar: Guitar {
    let volume: Int
    
    init(volume: Int, owner: String) {
        self.volume = volume
        super.init(owner: owner)
    }
    
    override func printOwner() {
        print("\(self.volume)")
    }
}

var anyGuitar: Guitar = Guitar(owner: "N")
var anyElectricGuitar = ElectricGuitar(volume: 20, owner: "Q")
anyGuitar.printOwner()
if let electricGuitar = anyGuitar as? ElectricGuitar {
    electricGuitar.printOwner()
}

//electricGuitar.printOwner()

let electricGuitar2 = anyElectricGuitar
electricGuitar2.printOwner()
//print(electricGuitar2.volume)
//print(electricGuitar2.owner)



