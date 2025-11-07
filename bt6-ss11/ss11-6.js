

let a = parseInt(prompt('Moi ban nhap vao so a:')); 
let b = parseInt(prompt('Moi ban nhap vao so b:'));

let operation = prompt("nhap vao phep tinh (+,-,*,/):")
switch(operation){
    case "+":{
        let sum = a+b;
        alert("tong cua 2 so a va b ="+sum);
        break;
    }
    case "-":{
        let sub = a-b;
        alert("hieu cua 2 so a va b ="+sub);
        break;
    }
    case "*":{
        let mul = a*b;
        alert("tich cua 2 so a va b ="+mul);
        break;
}
    case "/":{
        let div = a/b;
        alert("thương cua 2 so a va b ="+div);
        break;
    
    }
}
