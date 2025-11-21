//Khi bấm vào nút “Toggle dark mode”:

//Nếu background màu đen thì chuyển thành màu trắng và chữ đen
//Nếu background màu trắng thì chuyển thành màu đen và chữ trắng

const title = document.getElementById("title")
const content = document.getElementById("content")
const mode = document.getElementById( "mode")
const body= document.getElementById("body")
mode.addEventListener("click",()=>{
    if (body.style.backgroundColor=="black"){
     body.style.backgroundColor="white";  
     title.style.color="black";
     content.style.color="black";
     mode.style.background="grey"; 
     mode.innerText="Toggle light mode";
    }else{
    body.style.backgroundColor="black";
    title.style.color="white";
    content.style.color="white";
    mode.style.backgroundColor="green";
    mode.innerText="Toggle dark mode";

    }
//     if(title.style.backgroundColor== "black"){
// body.style.backgroundColor= "white";
//     }else if(title.style.backgroundColor=="white"){
// body.style.backgroundColor= "black";
//     }

})