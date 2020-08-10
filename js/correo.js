// formas.js

/** Revisar que los valores de los parametros no esten vacios */

function validar(formObj) {

if ( (formObj.nombre.value) == "") { 
alert ("Debe indicar su nombre");
return false;
}

if ( (formObj.correo.value) == "") { 
alert ("No indico su correo electronico");
return false;
}

if ( (formObj.pais.value) == -1) { 
alert ("Debe seleccionar su pais");
return false;
}

if ( (formObj.ciudad.value) == -1) { 
alert ("Seleccione su ciudad por favor");
return false;
}

/** Revision de terminacion de Correo Electronico */

if ( formObj.correo.value.match(/\.com|\.net|\.gov|\.org|\.mx|\.es|\.cl|\.co|\.pe/) == null) { 
alert ("No esta correcto su correo electronico, por favor reviselo");
return false;
}

}

function validarsolocorreo(formObj) {

if ( (formObj.email.value) == "") { 
alert ("No indico su correo electronico");
return false;
}

/** Revision de terminacion de Correo Electronico */

if ( formObj.email.value.match(/\.com|\.net|\.gov|\.org|\.mx|\.es|\.cl|\.co|\.pe/) == null) { 
alert ("No esta correcto su correo electronico, por favor reviselo");
return false;
}
}

function validarsolociudadpais(formObj) {

if ( (formObj.pais.value) == -1) { 
alert ("Debe seleccionar su pais");
return false;
}

if ( (formObj.ciudad.value) == -1) { 
alert ("Seleccione su ciudad por favor");
return false;
}

}

