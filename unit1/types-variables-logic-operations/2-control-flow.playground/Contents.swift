import UIKit

var str = "Hello, playground"



// control flow, tuples

// if / else

// block of code { code in here }

/*
 
 // example 1 - if statement
 
 if (some condition is true)
 {
 execute this block of code
 }
 
 // example 2 - if/else
 
 if (some condition is true)
 {
 execute this block of code
 }
 
 else
 {
 execute this block of code if the 'if' condition is false
 }
 
 // example 3 - if/else if/else
 
 
 */

// built in functions

/*
 print() - this will print whatever variable or string is inside the print parenthesis
 print("printed") or print(variable1)
 
 .lowercased() - this will lowercase all characters
 var example = "FRIDAY".lowercased() // this will translate "FRIDAY" to "friday"
 
 round() - this will round out the number
 var num1 = 1.345.round() // this will be rounded to -> 1.35
 */



var num1 = 1.345

print(round(num1))

//============================================
//          if / else if / else
//============================================
var t: Int = 185

if t < 45
{
    print("Its fuggin cold dont forget your gloves")
    if t == 0
    {
        print("im ded")
    }
}
else if t == 85
{
    print("this is my kind of weather")
}
else
{
    print("the temperature for today is \(t)")
}

//============================================
//          ternary operator - means 3

// regular condition - evaluates to true or false
// ternary condition - (condition) ? execute if true : execute if false
// example 100 > 99 ? "its over 99 degrees" : "its not over 99 degrees"

//vs
// if (condition)
// {
// code here
// }
// else
// {
// code here
// }
//============================================

var age = 20
print(age > 20 ? "you can have that drink 😃🍺" : "get back to grandmas house fool 😒")

100 > 99 ? "its over 99 degrees" : "its not over 99 degrees"


//============================================
//          switch statement
//============================================

var cohort = "iOS".lowercased()

switch cohort
{
case "iOS".lowercased(): //this is a 'case' or option
    print("iOS is awesome")
    fallthrough // this keyword will force execute the following case
case "backend":
    print("no matter what, this case (the one after the fallthrough) will be executed even if it doesnt match ")
case "eOS": //this is a 'case' or option
    print("eOS is awesome? 🥴")
default: // this is ther default case if there is no match
    print("not part of pursuit")
    
}


//============================================
//          ranges
//============================================

let fullRangeExample = 18...35 // this is called a closed range, using 3 periods ... it includes everything from 18 to 35, da full thang, the number 18 is the 'lowerbound' in the range, the upperbound is 35 (the highest number)

let halfRangeExample = 18..<35 // this includes everything from 18 up to 34, 35 is not counted, lowerbound is 18 here and upperbound is 34

let decimalRange = 11.98...25.99 // you can range decimals too


//============================================
//          switch statement on ranges
//============================================

let classNumber = 2.3

switch classNumber { // you can use switch statement on Bool, Int, Double, Character, and String
case 0..<2: // half open range, includes 0 and 1 , does not include 2
    print("you entered a number from 0 to 1.99")
case 2..<3:
    print("you entered a number from 2 to 2.99")
case 3..<4:
    print("you entered a number from 3 to 3.99")
case 4..<5:
    print("you entered a number from 4 to 4.99")
case 5..<6:
    print("you entered a number from 5 to 5.99")
default:
    print("aint no numba")
}


//============================================
//          tuples
//============================================

let coordinate = (40.7429595, -73.9441102) // the first number is position 0, the second is position 1 etc

print(coordinate.1, coordinate.0)


let socials = (twitter: "@mytwitHandle", ig: "@myigHandle") //to name the position, name it first followed by : to define its type

print(socials.twitter)

//============================================
//          switch statement on tuples
//============================================

let kim = (age: 19, cohort: 6.1, passion: "music")
let heather = (age: 19, cohort: 6.4, passion: "immigration rights")
let nancy = (age: 19, cohort: 6.3, passion: "video games")

print(kim.age) // only prints value of the tuple "kim" in position 'age'
print(kim) //prints all values of tuple "kim"


let currentFellow = kim

switch currentFellow {
case (18..<21, _, _):
    print("not allowed to drink at events")
case (_, 6.3, _):
    print("iOS is awesome")
case (_, _, "video games"):
    print("see you at pursuits game night")
case (_, _, _):
    print("you nothing")
default:
    print("you not a current fellow bruh")
}
