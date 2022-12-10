class Maths {
    
    func multiply(num1: Int, num2: Int) -> Int {
        let product = num1 * num2
        return product
    }
    
}

//multiply
var multi1 = 0
var multi2 = 0

print("Enter first number to be multiplied: ")
if let input1 = Int(readLine()!) {
    multi1 = input1
}

print("Enter second number to be multiplied: ")
if let input2 = Int(readLine()!) {
    multi2 = input2
}
print("The product of \(multi1) and \(multi2) is: \(Maths().multiply(num1: multi1, num2: multi2))")



func multiplyDouble (decimal: Double){
	let secondNumber = decimal * 5.5
print (“The first decimal is \(decimal), the second decimal is = \(secondNumber)”) 
} 

