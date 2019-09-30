import UIKit

var str = "Hello, playground"


// optional - used to indicate that a value MAY exist
//      two possible outcomes
//      outcome 1: there is a value and it can be used as normal
//      outcome 2: there is not a value, it is nil

/*
 
 String?
 Bool?
 Double?
 Character?
 */

/*
 
 ways to unwrap an optional:
 
 1. forced unwrapping : Int(example)!
 var example = "27"
 Int(example)! // this will force unwrap it to a int as long as theres a number in the var example, else it will crash, in this case example will be converted to a int of 27
 
 
 
 2. nil coelscing : Int(example) ?? 25
 var example = "twenty two"
 Int(example) ?? 25 // this will force unwrap it but if it fails it will use a default value of 25, in this case it failed so it used 25 as the default value for the var example
 
 
 
 3. optional binding : if let bindingValue = optionalValue
                        { .. use binding value here }
                    else
                        { .... }
 
 
 4. implicit unwrapping : var name: String!
 
 */


let response = "twenty seven"
let response2 = "27"

var age1 = Int(response)! // 1. force unwrapping, in this case it will give FATAL ERROR since there is no number in the string "response"


var age = Int(response) ?? 21 // 2. nil coelscing, in this case it will use default 21
age + 10


if let yourAge = Int(response2) // 3. optional binding, combines the value to the right with the value to the left
{
    print("the age you entered is \(yourAge)")
}
else
{
    print("the response value is nil")
}
