var product = 0

print("Enter the first number: ")
if let num1 = Int(readLine()!){
    product += num1
}

print("Enter the second number: ")
if let num2 = Int(readLine()!){
    product *= num2
}

print("The product: \(product)")


