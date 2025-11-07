
let weight = prompt( "hãy nhập vào cân nặng của bạn");
let height = prompt("hãy nhập vào chiều cao của bạn");
let BMI = weight/(height*height);

if (BMI>=40){
    alert(BMI+ ": Béo phì cấp độ 3")


} else if  (BMI>=35){
    alert(BMI+ ": Béo phì cấp độ 2")

} else if(BMI>=30){
    alert(BMI+ ": Béo phì cấp độ 1")
} else if(BMI>=25){
    alert(BMI+ ": thừa cân")
}  else if(BMI>=18.5){
    alert(BMI+ ": Bình thường")
}  else if(BMI<=18.5){
    alert(BMI+ ": cân nặng thấp gầy")
}