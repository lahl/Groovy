package test

import grails.rest.*

@Resource(uri='/api/ships', formats=['json', 'xml'])
class Ship {

	Long id
	String nombre
	Integer capacidad
	String color
	String capitan

    static mapping = {
		version false
		table 'SHIP'
		id column: 'id', generator:'native', params:[sequence:'order_seq']
	}
	
    static constraints = {
			nombre blank:false
			capacidad blank:false
			color blank:false
			capitan blank:false
	}
}
