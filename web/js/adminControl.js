/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var preescolar, basica, media, superior, posgrado, phd, otro;
var preescolarF, basicaF, mediaF, superiorF, posgradoF, phdF, otroF;
var estudios = [];
var forms = [];
var check = [];



function setUp() {
    preescolar = document.getElementById("preescolar");
    basica = document.getElementById("basica");
    media = document.getElementById("media");
    superior = document.getElementById("superior");
    posgrado = document.getElementById("posgrado");
    phd = document.getElementById("phd");
    otro = document.getElementById("otros");

    preescolarF = document.forms["preescolar"];
    basicaF = document.forms["basica"];
    mediaF = document.forms["media"];
    superiorF = document.forms["superior"];
    posgradoF = document.forms["posgrado"];
    phdF = document.forms["phd"];
    otroF = document.forms["otros"];
    estudios = [preescolar, basica, media, superior, posgrado, phd, otro];
    forms = [preescolarF, basicaF, mediaF, superiorF, posgradoF, phdF, otroF];

    for (var i = 0; i < 7; i++) {
        check.push(document.getElementById("check" + i));
    }
}




function studyHandler() {
    setUp();
    for (var j = 0; j < 7; j++) {
        if (check[j].checked)
            estudios[j].style.display = "inline";
        else
            estudios[j].style.display = "none";

    }
}

function studentValidation() {
    setUp();
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
    for (var j = 0; j < 7; j++) {
        if (check[j].checked) {

            if (forms[j]["nombre"].value === ""
                    || forms[j]["idAcademia"].value === ""
                    || forms[j]["fechaInicio"].value === ""
                    || forms[j]["fechaFin"].value === ""
                    || forms[j]["tipo"].value === ""
                    || forms[j]["categoria"].value === "") {

                alert("por favor llene completamente los campos de: \n" +
                        forms[j].name);
            }

        } else {
            forms[j]["nombre"].value = "null";
            forms[j]["idAcademia"].value = "null";
            forms[j]["fechaInicio"].value = "1-1-1111";
            forms[j]["fechaFin"].value = "1-1-1111";
            forms[j]["tipo"].value = "null";
            forms[j]["categoria"].value = "null";
        }

        data.push(forms[j]["nombre"].value,
                forms[j]["idAcademia"].value,
                forms[j]["fechaInicio"].value,
                forms[j]["fechaFin"].value,
                forms[j]["tipo"].value,
                forms[j]["categoria"].value);
    }
    if (data.length!==0) console.log(data);
}

function academyValidation() {
    setUp();
    var data = [];
    var institucion = document.forms["institucion"];
    if (institucion["nombre"].value === ""
            || institucion["idInstitucion"].value === ""
            || institucion["tipo"].value === ""
            || institucion["ciudad"].value === ""
            || institucion["modalidad"].value === ""
            || institucion["acreditada"].value === "") {

        alert("por favor llene completamente los datos de la institucion");
    } else {
        data.push(institucion["nombre"].value, institucion["idInstitucion"].value,
                institucion["tipo"].value, institucion["ciudad"].value,
                institucion["modalidad"].value, institucion["acreditada"].value);
    }
    if (data.length!==0) console.log(data);
}