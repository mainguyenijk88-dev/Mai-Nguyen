//Viết một chương trình để in các ký tự trong một mảng theo thứ tự đảo ngược. Ví dụ, nếu một mảng chứa các ký tự [ ‘c’, ‘s’, ‘c’, ‘2’, ‘6’, ‘1’ ] sau khi thực hiện đảo ngược sẽ là “162csc”
let arr = ['m','a','i','2,','0','1']

// for( let i= arr.length-1; i>=0; i--){
// console.log(arr[i]);

// }
for(let i=0; i<arr.length/2; i++){
    let tmp = arr[i];
    arr[i]= arr[arr.length-1-i]
    arr[arr.length-1-i]=tmp;

}
console.log(arr);

