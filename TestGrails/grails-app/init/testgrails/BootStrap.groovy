package testgrails

import grails.util.Environment;
import test.Ship;

class BootStrap {

    def init = { servletContext ->
    	/*switch (Environment.current) {
            case Environment.DEVELOPMENT:
            	if (Ship.count() == 0) {*/
	            new Ship(nombre: "Niña", capacidad: 20, color: "Cafe", capitan: "Vicente Yáñez Pinzón").save(flush: true);
	            new Ship(nombre: "Pinta", capacidad: 25, color: "Verde", capitan: "Martín Alonso Pinzón").save(flush: true);
                new Ship(nombre: "Santa Maria", capacidad: 35, color: "Amarillo", capitan: "Cristóbal Colón").save(flush: true);
            	/*}
                break
            case Environment.PRODUCTION:
                break
        }*/
    }
    def destroy = {
    }
}
