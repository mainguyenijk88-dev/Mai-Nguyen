//B1 : Khai báo hàm getMin() nhận vào 1 tham số là 1 mảng số nguyên
//B2 : Ben trong hàm khai báo biến min = phần tử đầu tiên trong mảng
//B3 : duyệt qua từng phần tử trong mảng
// , mỗi lần duyệt kiểm tra phần tử hiện tại đang lặp < min => min = phần tử đang lặp
//B4 : trả về giá trị min
//B5 : Khai báo 1 mảng số nguyên
//B6 : khai báo biến minValue = gọi lại hàm getMin()
//B7 : in ra giá trị minValue ra màn hình
let arr = [-1, 0, 1, 2, 3, 5, 7];
function getMin(arr) {
  let min = arr[0];
  for (i = 0; i < length; i++) {
    if (arr[i] < min) {
      min = arr[i];
    }
    }
    return min;
}

let integer = [2, 3, 4, 5, 6];
minValue = getMin(integer);
console.log(minValue);
