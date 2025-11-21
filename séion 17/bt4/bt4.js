// <!DOCTYPE html>
// <html lang="en">

// <head>
//     <meta charset="UTF-8">
//     <meta name="viewport" content="width=device-width, initial-scale=1.0">
//     <title>Document</title>
//     <style>
//         * {
//             margin: 0;
//             padding: 0;
//             box-sizing: border-box;
//         }

//         body {
//             padding: 100px;
//             position: relative;
//         }

//         #modal {
//             background-color: rgba(124, 118, 118, 0.5);
//             width: 100%;
//             height: 100vh;
//             position: fixed;
//             top: 0;
//             left: 0;
//             display: none;
//             border: 1px solid black;
//         }

//         h1 {
//             margin-bottom: 30px;
//         }

//         #content {
//             width: 500px;
//             height: 100px;
//             border: 1px solid black;
//             display: flex;
//             justify-content: space-between;
//             align-items: center;
//             background-color: white;
//             margin: 350px auto;
//             padding: 16px;
//         }

//         #closeModal {
//             margin-bottom: 50px;
//         }
//     </style>
// </head>

// <body>
//     <h1>Modal Example</h1>
//     <button id="openModal">Open Modal</button>

//     <div id="modal">

//         <div id="content">
//             <p>Some text in the modal</p>
//             <p id="closeModal">X</p>
//         </div>
//     </div>

// </body>
// <script>
//     const btnOpenModal = document.getElementById("openModal");
//     const modal = document.getElementById("modal");
//     const btnCloseModal = document.getElementById("closeModal");


//     btnOpenModal.addEventListener("click", () => {
//         modal.style.display = "block";
//     })

//     btnCloseModal.addEventListener("click", () => {
//         modal.style.display = "none";
//     })
// </script>

// </html>