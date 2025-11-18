// Viết chương trình khởi tạo nhập vào một mảng số nguyên gồm 10 phần tử khác nhau.
//  Chương trình hiển thị ra được phần tử có giá trị lớn nhất trong mảng và vị trí của phần tử đó.

let numberStr = prompt("moi ban nhap vao 10 so khac nhau");

let arr = (numberStr.split(","));
console.log(arr);

let max = arr[0];
for (let i = 1; i <= arr.length - 1; i++) {
  if (max < arr[i]) {
    max = arr[i];
  }
}
console.log(`gia tri lon nhat la ${max}`);
