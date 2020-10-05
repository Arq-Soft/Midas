/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var arquitectura, comunicaciones, fisica, modelos, bases, logica, teoria;
//var preescolarF, basicaF, mediaF, superiorF, posgradoF, phdF, otroF;
var estudios = [];
var forms = [];
var check = [];

//function setUp() {
////    arquitectura = document.getElementById("preescolar");
////    comunicaciones = document.getElementById("basica");
////    fisica = document.getElementById("media");
////    modelos= document.getElementById("superior");
////    bases = document.getElementById("posgrado");
////    logica = document.getElementById("phd");
////    teoria = document.getElementById("otros");
////
////    preescolarF = document.forms["preescolar"];
////    basicaF = document.forms["basica"];
////    mediaF = document.forms["media"];
////    superiorF = document.forms["superior"];
////    posgradoF = document.forms["posgrado"];
////    phdF = document.forms["phd"];
////    otroF = document.forms["otros"];
//    meterias = [arquitectura, comunicaciones, fisica, modelos, bases, logica, teoria];
//    //forms = [preescolarF, basicaF, mediaF, superiorF, posgradoF, phdF, otroF];
//
//    for (var i = 0; i < 7; i++) {
//        check.push(document.getElementById("check" + i));
//    }
//}


function studyHandler() {
//    setUp();
    for (var j = 0; j < 7; j++) {
        if (check[j].checked)
            estudios[j].style.display = "inline";
        else
            estudios[j].style.display = "none";

    }
}

function studentValidation() {
//    setUp();
    var data = [];
    var estudiante = document.forms["personal"];
    if (estudiante["nombres"].value === ""
            || estudiante["apellidos"].value === ""
            || estudiante["id"].value === ""
            || estudiante["ciudadNac"].value === ""
            || estudiante["residencia"].value === ""
            || estudiante["edad"].value === ""
            || estudiante["correo"].value === ""
            || estudiante["telefono"].value === "") {

        alert("por favor llene completamente los datos personales del estudiante");
    } else {
        data.push(estudiante["nombres"].value, estudiante["apellidos"].value,
                estudiante["id"].value, estudiante["ciudadNac"].value,
                estudiante["residencia"].value, estudiante["edad"].value,
                estudiante["correo"].value, estudiante["telefono"].value);
    }
}

