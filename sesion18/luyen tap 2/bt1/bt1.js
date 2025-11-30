//Thêm đối tượng có các thuộc tính tương tự các đối tượng có trong mảng “products”
//Xóa đối tượng có id là 2
//Truy vấn đến đối tượng có id là 3, sau đó cập nhật lại giá trị count = 0
//Cho từ khóa “Butter”. Kiểm tra từ khóa có trong mảng “products” hay không? Nếu Có in toàn bộ thông tin, nếu Không hiển thị thông báo “Không có dữ liệu bạn tìm kiếm”

let Products = [
    { id: 1, name: "milk", count: 100},
    { id: 2, name: "Orange", count: 130},
    { id: 3, name: "Butter", count: 200},
];
   
let newProduct =  { id: 4, name: "apple", count: 110};

Products.push(newProduct)
console.log(Products);

for(let i =0; i<Products.length; i++)
{
    if(Products[i].id ===2){
        Products.splice(i,1)
    }
}
console.log(Products);

for(i=0; i<Products.length; i++){
    if(Products[i].id === 3){
 Products[i].count = 0;
    }
}
console.log(Products);
let flash = false
for (i=0; i<Products.length; i++){
    if(Products[i].name === "Butter"){
        console.log(Products[i].name);
        flash= true;
        
    
    }
}
if(flash=== false){
    alert("ko tim thay")
}

