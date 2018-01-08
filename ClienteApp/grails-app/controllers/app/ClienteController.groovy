package app

import app.Cliente;
import groovy.json.*;

class ClienteController {

    def index() { }

    def guardar(String nombre, Integer edad, String telefono, String correo) {
    	Boolean realizado = false;
    	try {
    	Cliente cliente = new Cliente();
    	cliente.nombre = nombre;
    	cliente.edad = edad;
    	cliente.telefono = telefono;
    	cliente.correo = correo;
    	cliente.save();
    	realizado = true;
    	} catch (Exception ex) {
    		throw ex;
    	}
    	render JsonOutput.prettyPrint(JsonOutput.toJson(realizado));    	
    }

}
