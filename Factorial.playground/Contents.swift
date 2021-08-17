func findFactorial(num:UInt64) -> UInt64{
    if num == 0{
        return 1
    }
    return num * findFactorial(num: num - 1)
}
print(findFactorial(num: 5))
print(findFactorial(num: 10))
print(findFactorial(num: 20))

