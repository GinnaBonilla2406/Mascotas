
//*Autores: Ginna Bonilla Y Jhon Moreno
//*Fecha: 29/03/2017

console.log('Funcionando')
function tomar_sintomas()
	{
		var lista=document.getElementById('select');
		var salida="";
		for (var i = 0; i < lista.length; i++) 
		{
			if (lista.item(i).selected) 
			{
				if (salida=="") {
					salida+= (lista.item(i).value);
				} else{
					salida+= "," +(lista.item(i).value) 
				}
			}	
		}
		document.getElementById('cont-salida').value=salida
		console.log(salida)
	}
