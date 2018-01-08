<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>
</head>
<body> 
    <div class="svg" role="presentation">
        <div class="grails-logo-container">
            <asset:image src="grails-cupsonly-logo-white.svg" class="grails-logo"/>
        </div>
    </div>

    <div id="content" role="main">
        <section class="row colset-2-its">
            <h1>Sección 3</h1>

            <p>
                Para la siguiente sección necesitas instalar grails 3.2.4
                1. Realiza un controlador en grails llamado Test, que en el action greeting, muestre en pantalla un saludo
                2. Realiza una clase de dominio llamada Ship, la cual mapea atributos de un barco, como nombre, capacidad de pasajeros etc.
                3. En el archivo Boostrap.groovy de grails, crea tres instancias de Ship, y guárdalas en la base de datos. (Grails tiene una base de datos en memoria, la cual puede ser accedida en /dbconsole)
                4. Toma una impresión de pantalla de una consulta a la tabla ship, y guardala en el proyecto de grails
                5. Reliza un controlador Rest para la clase de dominio Ship
                6. Reliza el consumo de la api REST del barco, con alguna herramienta de pruebas que conozcas y toma impresiones de pantalla.
            </p>

            <div id="controllers" role="navigation">
                <h2>Controles disponibles:</h2>
                <ul>
                    <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                        <li class="controller">
                            <g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link>
                        </li>
                    </g:each>
                </ul>
            </div>
        </section>
    </div>

</body>
</html>
