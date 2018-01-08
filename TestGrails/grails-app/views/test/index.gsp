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
            <h1>Test</h1>

            <p>
                Ventana principal (index) del controlador Test
            </p>
            <div class="form-group" >
                <a href="${createLink(uri: '/test/greeting')}">Ir a la acción greeting.</a>
            </div>
        </section>
    </div>

</body>
</html>