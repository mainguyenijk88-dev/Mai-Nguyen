//Viết một hàm isEven nhận vào một số và trả về true nếu số đó là số chẵn, ngược lại trả về false.

//Yêu cầu người dùng nhập vào 1 số nguyên bất kỳ bằng hàm prompt()
//Hiển thị kết quả bằng alert()

//B1 : Khai báo 1 hàm isEven() nhận vào 1 tham số là 1 số nguyên - number
//B2 : kiểm tra nếu number % 2 == 0 => return true ;
               //else  => return false ; 
//B3 : Khai báo 1 biến số nguyên với giá trị nhập vào từ người dùng -> sử dụng hàm prompt() -> đặt tên biến là number
//B4 : Tạo ra biến kết quả result = isEven(number);
//B5 : In ra kết quả - result

function isEven(number){
if( number%2===0){
    return true;
    
}else {
    return false;
    
}

}
let number= +prompt('moi ban nhap so can kiem tra')
result = isEven(number);
console.log(result);

if (result===true){
alert( 'so ban nhap la so chan')
}else {
    alert(' so ban nhap la so le' )
}
