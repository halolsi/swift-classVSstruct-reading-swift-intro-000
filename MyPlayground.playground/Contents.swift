//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Question 1:

class Giant {
    var name: String
    var weight: Double
    let homePlanet: String
    
    init(name: String, weight: Double, homePlanet: String) {
        self.name = name
        self.weight = weight
        self.homePlanet = homePlanet
    }
}

let fred = Giant(name: "Fred", weight: 340.0, homePlanet: "Earth")

fred.name = "Brick"
fred.weight = 999.2
//fred.homePlanet = "Mars"

//Problems with .homePlanet because it is not a var


//Question 2:

class Giant2 {
    var name: String
    var weight: Double
    var homePlanet: String
    
    init(name: String, weight: Double, homePlanet: String) {
        self.name = name
        self.weight = weight
        self.homePlanet = homePlanet
    }
}

let fred2 = Giant2(name: "Fred", weight: 340.0, homePlanet: "Earth")

fred2.name = "Brick"
fred2.weight = 999.2
fred2.homePlanet = "Mars"

//Question 3:

struct Alien {
    var name: String
    var height: Double
    var homePlanet: String
}

let bilbo = Alien(name: "Bilbo", height: 1.67, homePlanet: "Venus")

//bilbo.name = "Jake"
//bilbo.height = 1.42
//bilbo.homePlanet = "Saturn"

//Nope let bilbo won't let change the parameters

//Question 4: 

struct Alien2 {
    var name: String
    var height: Double
    var homePlanet: String
}

var bilbo2 = Alien2(name: "Bilbo", height: 1.67, homePlanet: "Venus")

bilbo2.name = "Jake"
bilbo2.height = 1.42
bilbo2.homePlanet = "Saturn"


//Question 5: 

let edgar = Giant(name: "Edgar", weight: 520.0, homePlanet: "Earth")

print("\(edgar.name)")

let jason = edgar
jason.name = "Jason"

print("\(edgar.name)")
print("\(jason.name)")

//Question 6:

var charles = Alien(name: "Charles", height: 2.25, homePlanet: "Pluto")
var charlesFromJupiter = charles
charlesFromJupiter.homePlanet = "Jupiter"

print ("\(charles.homePlanet)")
print("\(charlesFromJupiter.homePlanet)")

//Question 7:

struct BankAccount {
    var owner: String
    var balance: Double

/*
    func deposit(_ amount: Double) {
        balance += amount
    }
    
    func withdraw(_ amount: Double) {
        balance -= amount
    }
 
*/
    
}

// Error on balance "Left side of mutating operator isn't mutable: 'self' is immutable"

//Question 8:

struct BankAccount2 {
    var owner: String
    var balance: Double
    
    
     mutating func deposit(_ amount: Double) {
     balance += amount
     }
     
     mutating func withdraw(_ amount: Double) {
     balance -= amount
     }
    
}

// Question 9:

var joeAccount = BankAccount2(owner: "Joe", balance: 100.0)
var joeOtherAccount = joeAccount
joeAccount.withdraw(50.0)

print (joeAccount.balance)

// Question 10:

class MusicLibrary {
    var tracks: [String]
    
    init() {
        tracks = []
    }
    
    func add(track: String) {
        tracks.append(track)
    }
}

let library1 = MusicLibrary()
library1.add(track: "Michelle")
library1.add(track: "Voodoo Child")
let library2 = library1
library2.add(track: "Come As You Are")

print (library1.tracks)


