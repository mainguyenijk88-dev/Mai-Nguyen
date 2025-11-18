//Viết một chương trình nhập vào 2 chuỗi, sau đó kiểm tra xem hai chuỗi có giống nhau hay không.
//B1 : Khởi tạo 2 chuỗi A và B
// B2 : Tạo 2 biến lưu trữ độ dài của chuỗi A và chuỗi B : lengthA , lengthB
//B3 : sử dụng if else để kiểm tra xem 2 chuỗi có = nhau ko ?
//    + Nếu 2 chuỗi = nhau => sử dụng vòng lặp for duyêt qua từng ký tự trong chuỗi : i = 0 ; i < lengthA ; i++
//      Nếu là ký tự tại cùng vị trí của 2 chuỗi mà khác nhau -> log ra 2 chuỗi khác nhau và return
//Thoát khỏi vòng lặp for in ra 2 chuỗi giống nhau

//+ Nếu 2 chuỗi có độ daì khác -> in ra 2 chuỗi khác nhau và return//
let string01 = "xin chao";
let string02 = "thay Huong";

let length01 = string01.length;
console.log(length01);
let length02 = string02.length;
console.log(length02);
check(string01,string02)
function check(string01, string02) {
   if (length01 !== length02) {
  console.log("2 chuoi co do dai khac nhau");
} else {
  
  for (i = 0; i < length01; i++)
    if (string01[i] !== string02[i]) {
      console.log('2 chuoi ko giong nhau');
     return;
      
    }else {
        console.log('2 chuoi giong nhau');
        
    }
}
 
}
