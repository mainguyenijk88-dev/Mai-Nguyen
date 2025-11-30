
let students= 
[  {
    id:1,
    name : "Nguyen Van A",
    gender:"nam",
    age : 19,
    mark : 8,
},]
 let newStudent = {
    id:2,
    name : "Le Thi B",
    gender:"nu",
    age : 18,
    mark : 9,
}
students.push(newStudent)
let markNumber = students[0].mark
for(let i = 0; i <students.length; i++){
    if(students[i].mark>markNumber){
        markNumber=students[i].mark
    }
}
console.log("diem cao nhat la:" +markNumber);
