package app

import java.util.Random;
import groovy.json.*;

class BurbujaController {

    def index() { }

    def generar() { 
    	ArrayList<Integer> numeros = new ArrayList<Integer>();
    	for(Integer i = 0; i < 10; i++)
    		numeros.add(Math.abs(new Random().nextInt() % 600) + 1);
    	//render JsonOutput.toJson(num);
    	render JsonOutput.prettyPrint(JsonOutput.toJson(numeros));
    }

    def ordenar(String arreglo) {
    	ArrayList<Integer> lstOrdenada = new ArrayList<Integer>();
    	ArrayList<Integer> lstDesordenada = new ArrayList<Integer>();
    	lstDesordenada = obtenerLista(arreglo);
    	lstOrdenada = ordenamientoBurbuja(lstDesordenada); 
    	render JsonOutput.prettyPrint(JsonOutput.toJson(lstOrdenada));
    }

    
	private ArrayList<Integer> ordenamientoBurbuja(ArrayList<Integer> arreglo){
    	for(Integer i = 0; i < arreglo.size() - 1; i++)
        {
            for(Integer j = 0; j < arreglo.size() - 1; j++)
            {
                if (arreglo.get(j) > arreglo.get(j + 1))
                {
                    Integer tmp = arreglo.get(j+1);
                    arreglo.set(j+1, arreglo.get(j));
                    arreglo.set(j, tmp);
                }
            }
        }
        return arreglo;
	}
    
    private List<Integer> obtenerLista(String strLista){
    	ArrayList<Integer> lista = new ArrayList<Integer>();
    	for(String str in strLista.split(',')){
    		lista.add(Integer.parseInt(str));
    	}
    	return lista;
    }

}
