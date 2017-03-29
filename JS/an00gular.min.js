
//*Autores: Ginna Bonilla Y Jhon Moreno
//*Fecha: 29/03/2017

console.log('Angular funcinando');
    var acumuladorApp = angular.module('acumuladorApp', []); //3

        acumuladorApp.controller("acumuladorAppCtrl", //4
            
            //[ "$scope",  //Originalmente solo se minificaba el scope.
            //5
            [ "$scope", "$http", //Esto es para minificar, pero interfiere con lo de php, hay que minificar las otras variables.
                function($scope, $http)//6
                {
                    $scope.cargar_datos_php = function() // 7
                    {
                        console.log('Hola mundo')
                        var lista=document.getElementById('select');
                        var salida="";
                            for (var i = 0; i < lista.length; i++) 
                            {
                                if (lista.item(i).selected) 
                                {
                                    if (salida=="") 
                                    {
                                        salida+= (lista.item(i).value);
                                    }else{
                                        salida+= "," +(lista.item(i).value) 
                                    }
                                }   
                            }
                            document.getElementById('cont-salida').value=salida
                            console.log(salida)
                        
                            if( salida.length != "")
                            {
                                //Aquí se hace el llamado a un php con conexión a MySQL.
                                $http.get('llamado-php.php?cadena=' + salida) //8
                                .then(function (response){$scope.campos = response.data.records;}); //9  
                            }                    
                    } //Fin 7
                } //Fin 6.
            ]  //Fin 5.
        ); //Fin 4.
        
