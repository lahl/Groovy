function guardar(){
	if ($("#txt-nombre").val().trim() == ""){
		alert("El campo del nombre no puede estar vacío.");
		return;
	} 

	$.ajax({
          type: "POST", 
          url: '/Cliente/guardar',
          data: {
          	nombre: $("#txt-nombre").val().trim(),
            edad: parseInt($("#txt-edad").val().trim()),
            telefono: $("#txt-telefono").val().trim(),
            correo: $("#txt-correo").val().trim()
          },
          success: function(res) {
           	res = JSON.parse(res);
            if (res == true) {
           	  alert("El cliente se ha guardado correctamente");
              location.reload();
            } else {
              alert("Ha ocurrido un error, por favor llame a soporte técnico");
            }
      	  }, 
      	  error: function(err_data){
      	  	alert("Ha ocurrido un error, por favor llame a soporte técnico");
      	  }
    });
}