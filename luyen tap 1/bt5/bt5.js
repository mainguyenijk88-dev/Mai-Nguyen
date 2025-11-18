let arr =[-3,-2,-1,0,1,3,4,5,-4,-5]
let count = 0
for(i=0; i<=arr.length-1; i++){
    if(arr[i]<0){
        count= count+1;
    }
    
}
console.log(`so luong so nguyen am bang: ${count}`);
