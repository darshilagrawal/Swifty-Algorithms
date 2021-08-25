func findMinMax(arr:[Int]) -> (Int?,Int?){
    if arr.count == 0{
        return (-1,-1)
    }
    var (min,max) = (arr.first,arr.first)
    let first = arr.count % 2
    for i in stride(from: first, to: arr.count, by: 2){
        let pair1 = arr[i]
        let pair2 = arr[i+1]
        if pair1 > pair2{
            if pair1 > max!{
                max = pair1
            }
            if pair2 < min!{
                min = pair2
            }
        }else{
            if pair2 > max!{
                max = pair2
            }
            if pair1 < min!{
                min = pair1
            }
        }
    }
    
    return (min,max)
}

let arr = [1,34,2,8,23,9,11]
let results = findMinMax(arr: arr)
print("Minimum value is \(String(describing: results.0))")
print("Maximum value is \(String(describing: results.1))")
