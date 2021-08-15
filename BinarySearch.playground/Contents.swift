
let arrayValues = [1,23,45,56,78,89,101,111]

func binarySearch(searchVal:Int,array:[Int]) -> Bool{
    var leftIndex = 0
    var rightIndex = array.count - 1
    while rightIndex >= leftIndex {
        let middleIndex = (leftIndex + rightIndex) / 2
        let middleVal = array[middleIndex]
        if middleVal == searchVal{
            return true
        }
        if middleVal > searchVal{
            rightIndex = middleIndex - 1
            break
        }
        if middleVal < searchVal{
            leftIndex = middleIndex + 1
            break
        }
    }
    return false
}

let verdict = binarySearch(searchVal: 23, array: arrayValues)
print(verdict)
