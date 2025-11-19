//Sử dụng hàm confirm để nhận thông tin đầu vào và đưa ra quyết định dựa trên những thông tin đó
//Hàm này đánh giá giá trị có trong đối số answer.
//Nếu giá trị của biến answer là true đồng nghĩa với việc người dùng chọn OK, hàm sẽ tạo biến result và  gán giá trị cho biến result là chuỗi "Excellent. We'll play a nice game of chess."
//Nếu giá trị của biến answer là false, đồng nghĩa với việc người dùng chọn Cancel, hàm sẽ vẫn tạo biến result nhưng gán giá trị cho biến result là chuỗi "Maybe later then."
//Bất kể biến answer lưu giá trị gì, hàm processConfirm trả về biến result cho hàm gọi bằng câu lệnh return bên trong hàm.
 
function processConfirm(answer){
    let result = '';
if (answer === true){
 
    result= "Excellent. We'll play a nice game of chess."

}else {
result= "may be later then"

}
return result;
    
}
let answer=confirm ("ban co muon thoat game ko?");
let result=processConfirm(answer);
alert(result);