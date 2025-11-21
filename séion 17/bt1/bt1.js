//Khi bấm vào nút “Hide text” thì sẽ ẩn đi nội dung ở trên
//Khi bấm vào nút “Show text” thì sẽ hiển thị lên nội dung ở trên
//const name = document.getElementById("name");

//B1 : tạo 3 biến lưu trữ 3 phần tử button : hidden và dislay -> phương thức getElementById và thẻ nội dung văn bản : content
// B2 : gắn sự kiện cho 2 biến ở trên :
//+ biến hidden : gắn sự kiện click -> đổi textContent của thẻ văn bản : content.textContent = "";
// + biến display : gắn sự kiện click -> đổi textContetn của thẻ văn bản : content.textContent = "This is a text";

const title = document.getElementById("title");
const button1 = document.getElementById("buttonleft");
const button2= document.getElementById("buttonright");
console.log(button1);
console.log(button2);




// button1.onclick= function(){
// title.textContent="";
// }
// button2.onclick= function(){
// title.textContent="This is a text";
// }
//const button1 = "";
 // button1.addEventListener("click",() => {
   // title.textContent = "";
  //})

 // button2.addEventListener("click",() => {
   // title.textContent = "This is a text";
  //})

 button1.addEventListener("click",()=>{
    title.textContent="";

})
button2.addEventListener("click", ()=> {
    title.textContent="This is a text";
})



