let str = "0,1,2,3,4,5 ";

let strNumber = str.split(",");
console.log(strNumber);
let max = strNumber[0];

for (let i = 0; i <= strNumber.length; i++) {
  console.log(strNumber[i]);
  if (max < strNumber[i]) {
    max=strNumber[i]
  }
}
console.log(max);

