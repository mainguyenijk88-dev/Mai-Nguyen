let arr = [1,2,3,4,5,6,7,8,9,10]
max = arr[0];
let ave;
let sum =  0
for (let i = 1; i <= arr.length - 1; i++) {
  if (max < arr[i]) {
    max = arr[i];
  }
sum+= Number(arr [i]) 
ave = sum / arr.length
}
console.log(`gia tri trung binh la: ${ave}`);

console.log(`gia tri lon nhat la ${max}`);


 
