<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Formulario de cliente</title>
</head>
<body> 
  <div class="content">
    <div class="row"> 
          <div class="form-group col-md-12">
            <label class="label">Nombre</label>
            <input type="text" class="form-control" id="txt-nombre" placeholder="Nombre">
          </div> 
          <div class="form-group col-md-12">
            <label class="label">Edad</label>
            <input type="number" class="form-control" id="txt-edad" placeholder="Edad">
          </div>
          <div class="form-group col-md-12">
            <label class="label">Telefono</label>
            <input type="text" class="form-control" id="txt-telefono" placeholder="Teléfono">
          </div>
          <div class="form-group col-md-12">
            <label class="label">Correo</label>
            <input type="email" class="form-control" id="txt-correo" aria-describedby="emailHelp" placeholder="Correo">
          </div>
    </div>
    <div class="row">
          <div class="form-group col-md-12">
            <button onclick="guardar()" type="submit" class="btn btn-primary btn-sm">Guardar</button>
          </div>
      </div>
    </div>
  </div>
  </body>
</html>