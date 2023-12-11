function valorEntrada() {
	
	
//    <span id="miSpan">Este es un span</span>

   
        // Obtener el elemento <span> por su ID
//        var miSpan = document.getElementById("miSpan");

        // Verificar si el elemento existe antes de intentar modificarlo
//        if (miSpan) {
            // Cambiar el contenido del <span> utilizando innerText
 //           miSpan.innerText = "Nuevo valor para el span";
	
	
	
	

    var capCantidad = document.getElementById('cantidad').value;
    var capCategoria = document.getElementById('estadia').value;
out.println(document.getElementById('estadia').value);
    const TICKET = 3500;
    var resumenTotal = 0;
console.log(capCategoria.chart(0))

    switch (capCategoria.chart(0)) {
        case '1':
            resumenTotal = capCantidad * TICKET * 0.5;
            break;
        case '2':
            resumenTotal = capCantidad * TICKET;
            break;
        case '3':
            resumenTotal = capCantidad * TICKET * 2 * 0.8;
            break;
    }

  var miSpan = document.getElementById("total");
  miSpan.innerText =1000;//resumenTotal;
  //  document.getElementById('total').value = resumenTotal;
  
}


function controlForm() {

    //CONTROLO NOMBRE
    const nom = nombre.value;

    var regex = /^[A-ZÑa-zñáéíóúÁÉÍÓÚ'° ]+$/;

    if (regex.test(nom)) {
        nombre.classList.remove('is-invalid');
    } else {
        nombre.classList.add("is-invalid");
        nombre.focus();
    }

    //CONTROLO APELLIDO
    const ape = apellido.value;

    var regex = /^[A-ZÑa-zñáéíóúÁÉÍÓÚ'° ]+$/;

    if (regex.test(ape)) {
        apellido.classList.remove('is-invalid');
    } else {
        apellido.classList.add("is-invalid");
        apellido.focus();
    }

    //CONTROLO CANTIDAD
    const cant = cantidad.value;

    var regex = /^[0-9]+$/;

    if (regex.test(cant)) {
        cantidad.classList.remove('is-invalid');
    } else {
        cantidad.classList.add("is-invalid");
        cantidad.focus();
    }

    //CONTROLO ESTADIA
    const est = estadia.value;

    var regex = /^[0-2]+$/;

    if (regex.test(est)) {
        estadia.classList.remove('is-invalid');
    } else {
        estadia.classList.add("is-invalid");
        estadia.focus();
    }
   
    //CONTROLO MAIL
    const correo = mail.value;

    var regex = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;

    if (regex.test(correo)) {
        mail.classList.remove('is-invalid');
    } else {
        mail.classList.add("is-invalid");
        mail.focus();
    }

    valorEntrada();
}

const BTNCLICK = document.getElementById('btnResumen');

BTNCLICK.addEventListener('click', controlForm);




const COSTO = document.getElementById('btnCosto');

COSTO.addEventListener('click', valorEntrada);


