var lista = [];
$(document).ready(function () {  
    
});

function generar(){
	$.ajax({
          type: 'POST',
          url: '/burbuja/generar',
          //data: { someId: Id1, otherId:Id2},
          success: function(data) {
         	lista = data;
         	data = JSON.parse(data);
         	$("#txt-lista").text(data);
      	  }, 
      	  error: function(err_data){
      	  	console.log(err_data);
      	  }
    });
}

function ordenar(){
	if ($("#txt-lista").text().trim() == ""){
		alert("Debe generar una lista antes de ordenar");
		return;
	}
	//var strList = JSON.stringify(lista);
	$.ajax({
          type: "POST", 
          url: '/burbuja/ordenar',
          data: {
          	arreglo: $("#txt-lista").text().trim()
          },
          success: function(data) {
         	data = JSON.parse(data);
         	$("#txt-ordenada").text(data);
      	  }, 
      	  error: function(err_data){
      	  	console.log(err_data);
      	  }
    });
}
