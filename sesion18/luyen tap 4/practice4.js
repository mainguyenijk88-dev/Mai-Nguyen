
   
    
//         <!DOCTYPE html>
// <html lang="en">

// <head>
//     <meta charset="UTF-8">
//     <meta name="viewport" content="width=device-width, initial-scale=1.0">
//     <title>Document</title>
//     <style>
//         .keybroad {
//             padding: 10px;
//             background-color: #007bff;
//             color: white;
//             margin-right: 10px;
//             margin-top: 10px;
//         }

//         .keybroadDelete {

//             background-color: #dc3545;

//         }
//     </style>


// </head>

// <body>
//     <input type="text" placeholder="Nhập ở đây ..." id="input">

//     <div id="keybroads">

//     </div>

// </body>
// <script>

//     const arrayKeybroads = ['Q', 'W', 'R', 'T', 'Y', 'U', 'I', 'O', 'P', 'A', 'S', 'D', 'F', 'G', 'H', 'J', 'K', 'L', 'Z', 'X', 'C', 'V', 'B', 'N', 'M'];
//     const input = document.getElementById("input");
//     const keybroads = document.getElementById("keybroads");

//     function pressKey(key) {
//         input.value += key;
//     }

//     for (let i = 0; i < arrayKeybroads.length; i++) {
//         keybroads.innerHTML += `<button class="keybroad" value="${arrayKeybroads[i]}">${arrayKeybroads[i]}</button>`;
//         if (i % 10 == 0 && i != 0) {
//             keybroads.innerHTML += "<br>";
//         }
//     }
//     keybroads.innerHTML += `<button class="keybroadDelete keybroad" id="btnDelete">Xóa</button>`


//     const listKeybroard = document.getElementsByClassName("keybroad");
//     const btnDelete = document.getElementById("btnDelete");
//     for (let i = 0; i < listKeybroard.length - 1; i++) {
//         const key = listKeybroard[i].getAttribute("value");
//         listKeybroard[i].addEventListener("click", () => {
//             input.value += key;
//         })
//     }

//     btnDelete.addEventListener("click", () => {
//         input.value = input.value.slice(0, -1);
//     })

//     B1 : Tạo thẻ input có id= "input" và 1 thẻ dc bao bọc các phim , đặt id= "keybroads" trên giao diện html
//     B2 : Khai báo 2 biến input và keybroads để lấy các phần tử html có id tương ứng
//     B3 : Tạo 1 mảng các ký tự với mỗi phần tử là 1 chữ cái .
//     B4 : sử dụng vòng lặp for duyệt qua mảng các chữ cái , với mỗi lần lặp chúng ta sử dụng thuộc tính
//             .innerHTML để thêm 1 phần tử (1 button với nội dung là chữ cái tương ứng phần tử hiện tại đang lặp ,
//             mỗi button sẽ thêm 1 atribute là "value" với giá trị là phần từ ký tự tương ứng đang được lặp)
//                  vào thẻ keybroads .

//     B5 : Khai báo biến listKeybroard lưu trữ danh sách các phần tử html button chữ cái = document.getElementsByClassName
//     B6 : Thêm sự kiện click vào các button chữ cái , sử dụng vòng lặp for duyệt qua các phần tử html trong listKeybroard
//             bên trong vòng lặp for tạo biến key = giá trị của atribute value của phần tử đang lặp
//             => gắn sự kiện click cho phần tử đang lặp , khi đc click vào thì sẽ nối thêm key vào thuộc tính value của thẻ input

//     B7 : khai báo biến btnDelete lưu trữ phần tử html của button xóa
//     B8 : Gắn sự kiện click cho btnDelete , mỗi khi click thì sẽ gán lại thuộc tính value
//         của thẻ input = giá trị mới là giá trị của của thẻ input nhưng bị xóa đi ký tự cuối cùng
//         => gợi ý sử dụng hàm splice(0,-1) ;






// </script>

// </html>