/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function openInNewTab(url) {
    
    alert("acceso concedido!\n se abrirá la pagina en una nueva pestaña, puede cerrar esta sin problemas");
    var win = window.open(url, '_blank');
    win.focus();

}

function validateAdmin() {
    var usr = document.forms["admin"]["usr"].value;
    var psw = document.forms["admin"]["psw"].value;
    if (usr !== "admin" && psw !== "midas") {
        alert("usuario o contraseña inválidos");
    } else {
        openInNewTab("admin.jsp");
        //window.open("https://www.w3schools.com", "_blank", "toolbar=yes,top=500,left=500,width=400,height=400"); para nueva ventana

    }




}