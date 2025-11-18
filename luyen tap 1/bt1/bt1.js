let number =[1,2,3,4,10,15,20,30,40,50]
let count = 0;

for(let i=0; i<=number.length-1;i++){
   if(number[i]>=10) {
    
    count= count+1;
   console.log(`cac so lon hon bang 10 la : ${number[i]}`);
    
   }
}

 console.log(`tong so lon hon bang 10 la: ${count}`)