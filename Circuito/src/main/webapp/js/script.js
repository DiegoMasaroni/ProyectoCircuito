function EliminarTicket(){
	window.location="delete.jsp"; 
}
const btnDell =document.getElementById('btnDelete');
btnDell.addEventListener('click',EliminarTicket);



//////////////////////////////////

function valorEntrada() {
    var capCantidad = document.getElementById('cantidad').value;
    var capCategoria = document.getElementById('estadia').value;
//out.println(document.getElementById('estadia').value);
out.println(capCantidad);

    const TICKET = 3500;
    var resumenTotal = 1000;

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

  //var miSpan = document.getElementById("total");
  //miSpan.innerText =1000;//resumenTotal;
  
    document.getElementById('total').innerHTML = resumenTotal;
  
}

const COSTO = document.getElementById('btnCosto');

COSTO.addEventListener('click', valorEntrada);