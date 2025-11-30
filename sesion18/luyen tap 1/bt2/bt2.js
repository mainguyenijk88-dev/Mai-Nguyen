//Bài 2: Viết chương trình tạo đối tượng student có cặp key và value tương ứng như dưới đây, sau đó khởi tạo đối tượng newStudent có các thuộc tính tương tự (value tự điền). Sau đó tạo mảng “students” để chứa chúng. Cuối cùng truy xuất các thuộc tính của đối tượng “newStudent” sau khi thêm vào mảng “students”

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
console.log(`id la: ${students[1].id}, ten: ${students[1].
name}, gioi tinh: ${students[1].gender}, Tuoi: ${students[1].age}, Diem :${students[1].mark}`);

// for(let i = 0; i<=student.length-1; i++){






