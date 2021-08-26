
func insertionSort(arr:[Int]) -> [Int]{
    var sortedArray = arr
    for i in 1..<arr.count{
        var curr = i
        while curr > 0 && sortedArray[curr] < sortedArray[curr - 1]{
            sortedArray.swapAt(curr, curr - 1)
            curr = curr - 1
        }
    }
    return sortedArray
}
var arr = [9,23,12,56,1,2,5,78]
let sorted = insertionSort(arr: arr)
