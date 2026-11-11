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
				<%-- TODO 1-10: propiedades visuales, id y campos hidden según las instrucciones. --%>
				<div class="detail">
					<img class="detail__image"
						src="${pageContext.request.contextPath}${destino.imagen}" alt="${destino.nombre}">
					<div>
						<span class="badge">${destino.pais}</span>
						<h1>${destino.nombre}</h1>
						<p>${destino.descripcion}</p>
						<div class="meta">
							<span>${destino.dias}</span>
						</div>
						<p class="price">${destino.precioDesde}€</p>
						<div class="actions">
							<a class="btn btn--ghost"
								href="${pageContext.request.contextPath}/destinos">Volver</a>
						</div>
					</div>
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
