let memu = +prompt(`menu : Lua chon 1 nhap ten nguoi dung: 
    Lua chon 2: Nhap tuoi nguoi dung:
    Lua chon 3: In ten va tuoi cua nguoi dung.
    Lua chon 4: In bang cuu chuong cua 1 so.
    Lua chon 5:Kiểm tra số nhập vào là số chẵn hay lẻ.
    Lua chon 6: Tính tổng các số từ 1 đến N 
    Lua chon 7: In các số trong một dãy 
    Lua chon 8:Kiểm tra số nhập vào có phải là số nguyên tố hay không.
    Lua chon 9: In chuỗi đảo ngược của một chuỗi mà người dùng nhập.
    Lua chon 10: Thoát khỏi chương trình.`);
let name;
let age;
let print;
let diploma;
let check;
let sum;
let prtNumber;
let prime;
let revers;
let logout;
switch (memu) {
  case 1:
    console.log("nhap ten nguoi dung");
    break;
  case 2:
    console.log("nhap tuoi nguoi dung");
    break;
  case 3:
    console.log("In ten va tuoi cua nguoi dung");
    break;

  case 4:
    console.log("In bang cuu chuong");
    break;
  case 5:
    console.log("Kiểm tra số nhập vào là số chẵn hay lẻ");
    break;
  case 6:
    console.log("Tính tổng các số từ 1 đến N ");
    break;
  case 7:
    console.log("In cac so trong 1 day");
    break;
  case 8:
    console.log("Kiểm tra số nhập vào có phải là số nguyên tố hay không");
    break;
  case 9:
    console.log("In chuỗi đảo ngược của một chuỗi mà người dùng nhập");
    break;
  case 10:
    console.log("thoat khoi chuong trinh");
    break;
    default:
    console.log("lua chon ko co trong menu");
break;

}
