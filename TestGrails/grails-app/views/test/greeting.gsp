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
    <div class="nav" role="navigation">
        <ul>
            <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>            
        </ul>
    </div>
    <div id="content" role="main">
        <section class="row colset-2-its">
            <h1>Saludo en grails</h1>

            <p>
                Hola!!! te saludo desde la acción greeting del controlador Test.
            </p>

        </section>
    </div>

</body>
</html>