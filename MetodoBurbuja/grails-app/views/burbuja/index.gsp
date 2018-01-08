<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'burbuja.label', default: 'Burbuja')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>

    </head>
    <body>
        <a href="#list-burbuja" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>            
            </ul>
        </div>
        <div class="row">
            <div id="lista-aleatoria">
                <div class="col-md-5">
                    <span><strong>Lista desordenada:</strong></span>
                    <text id="txt-lista"></text>
                </div>
                <div class="col-md-5">
                    <span><strong>Lista ordenada:</strong></span>
                    <text id="txt-ordenada"></text>
                </div>
                <div class="col-md-2">
                    <button onclick="generar();" type="button" class="btn btn-success btn-sm"><i class="icon-search4"></i>Generar</button> 
                    <button onclick="ordenar();" type="button" class="btn btn-success btn-sm"><i class="icon-search4"></i>Ordenar</button> 
                </div>
            </div>
        </div>
    </body>
</html>