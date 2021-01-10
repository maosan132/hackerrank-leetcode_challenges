    //Given an array of integers, find the longest subarray where the absolute difference between any two elements is less than or equal to 1.
    //https://www.hackerrank.com/challenges/picking-numbers/problem?h_r=internal-search
    
    let arr= []
    a.sort((a, b) => a-b)
    for(let i = 0; i<a.length; i++){
        let c = 0
        for(var j = 0; j <a.length; j++){
            if(Math.abs(a[i] - a[j] == 1 || a[i] == a[j])){
                c++
            }
            arr.push(c)
        }
    }
    arr.sort((a, b) => b-a)
    return arr[0]
