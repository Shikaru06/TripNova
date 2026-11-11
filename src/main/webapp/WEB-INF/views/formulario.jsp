<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!doctype html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>TripNova</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/styles.css">
</head>
<body>
	<header class="navbar">
		<div class="container">
			<a class="brand" href="${pageContext.request.contextPath}/destinos">TripNova</a>
			<nav class="navlinks">
				<a href="${pageContext.request.contextPath}/destinos">Catálogo</a>
			</nav>
		</div>
	</header>
	<main>
		<section class="section">
			<div class="container">
				<div class="form-shell">
					<%-- TODO numerados: completa destino, método, campos hidden, nombres y valores dinámicos sin modificar las clases CSS. --%>
					<span class="eyebrow">Gestión</span>
					<h1>Formulario de destino</h1>
					<form action="${pageContext.request.contextPath}/destinos"
						method="POST">
						<input type="hidden" name="accion" value="${modo}"><input
							type="hidden" name="id" value="${destino.id}">
						<div class="form-grid">
							<div class="field">
								<label for="nombre">Nombre</label><input id="nombre" type="text"
									name="nombre" value="${destino.nombre}">
							</div>
							<div class="field">
								<label for="pais">País</label><input id="pais" type="text"
									name="pais" value="${destino.pais}">
							</div>
							<div class="field field--full">
								<label for="descripcion">Descripción</label>
								<textarea id="descripcion" name="descripcion">${destino.descripcion}</textarea>
							</div>
							<div class="field">
								<label for="precioDesde">Precio desde</label><input id="precioDesde"
									type="number" name="precioDesde" value="${destino.precioDesde}" step="0.01"
									min="0">
							</div>
							<div class="field">
								<label for="dias">Días</label><input id="dias"
									type="number" name="dias" value="${destino.dias}" min="0">
							</div>
							<div class="field">
								<label for="imagen">Ruta de imagen</label><input id="imagen"
									type="text" name="imagen" value="${destino.imagen}">
							</div>
							<div class="field">
								<label for="destacado">Destacado</label><input id="destacado"
									type="checkbox" name="destacado" value="true">
							</div>
							<div class="field">
								<label for="tipoId">Tipo</label><select id="tipoId"
									name="tipoId"><c:forEach var="tipo"
										items="${tipos}">
										<option value="${tipo.id}">${tipo.nombre}</option>
									</c:forEach></select>
							</div>
						</div>
						<div class="actions">
							<button class="btn btn--primary" type="submit">Guardar</button>
							<a class="btn btn--ghost"
								href="${pageContext.request.contextPath}/destinos">Cancelar</a>
						</div>
					</form>
				</div>
			</div>
		</section>
	</main>
	<footer>
		<div class="container">
			<strong>TripNova</strong>
			<p>Tu próxima historia empieza aquí. Proyecto académico DWES.</p>
		</div>
	</footer>
</body>
</html>
