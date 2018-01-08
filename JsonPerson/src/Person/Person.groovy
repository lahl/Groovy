/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Person;
/**
 *
 * @author Luis Higareda
 */
import groovy.json.*

class Person {
    //Declaración del mapa person con valores iniciales
    def static personMap = [nombre:'Luis Higareda', edad: 25, telefono: "622 106 92 17", correo: "lahl.luis@gmail.com"];
    static void main(String[] args) {
        println("Sección 2");
        println("Realiza un script en groovy que a partir de un mapa con los datos de una persona (nombre, edad), convierta dicho mapa a json, y guarde el json en un archivo llamado person.json.");
        println("Puedes utilizar la clase groovy.json.JsonOutput para realizar este ejercicio.");
        def mapAsJson = JsonOutput.toJson(personMap); //Convertir el mapa a json
        guardarArchivo(personMap, "person.json");
        println("Resultado de la lectura del archivo person.json");
        println(cargarArchivo("person.json"));
    }
    
    static guardarArchivo(def json, String filePath) {
        new File(filePath).write(new JsonBuilder(json).toPrettyString())
    }

    static Object cargarArchivo(String filePath) {
        return new JsonSlurper().parseText(new File(filePath).text)
    }
}

