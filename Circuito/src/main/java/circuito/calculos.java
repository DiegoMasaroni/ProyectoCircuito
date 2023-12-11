package circuito;

public class calculos {
    double valorticket=3500;
    
 // Definir una función que toma dos parámetros enteros y devuelve un valor decimal
    public double calcular(int cant, char cat) {
    	
    	 switch (cat) {
         case '1':
        	 return (double) cant * valorticket *0.5;
         case '2':
        	 return (double) cant * valorticket;
         case '3':
        	 return (double) cant * valorticket*2*0.8;
            
         default:
             System.out.println("Opción no reconocida");
     }
    	
    	
        // Convertir uno de los operandos a double para realizar la división decimal
        return (double) cant;
    }




/*var capCantidad = document.getElementById('cantidad').value;
    var capCategoria = document.getElementById('estadia').value;

    const TICKET = 3500;
    var resumenTotal = 0;

    switch (capCategoria) {
        case "0":
            resumenTotal = capCantidad * TICKET * 0.5;
            break;
        case "1":
            resumenTotal = capCantidad * TICKET;
            break;
        case "2":
            resumenTotal = capCantidad * TICKET * 2 * 0.8;
            break;
    }


    document.getElementById('total').innerText = resumenTotal;*/
} 