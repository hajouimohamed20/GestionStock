<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>User Management Application</title>
	<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Pacifico&family=Tourney&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Pacifico&family=Special+Elite&family=Tourney&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Luckiest+Guy&display=swap" rel="stylesheet">	
<script src="https://kit.fontawesome.com/7a87ccd6b4.js" crossorigin="anonymous"></script>	
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Covered+By+Your+Grace&display=swap" rel="stylesheet">
	
<style>
body {
  background-image: url('https://onepci.net/wp-content/uploads/2020/05/LOGO-ONEP_HD-1.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
  
}
.slider {
  -webkit-appearance: none;
  width: 100%;
  height: 15px;
  border-radius: 5px;  
  background: #d3d3d3;
  outline: none;
  opacity: 0.7;
  -webkit-transition: .2s;
  transition: opacity .2s;
}

.slider::-webkit-slider-thumb {
  -webkit-appearance: none;
  appearance: none;
  width: 25px;
  height: 25px;
  border-radius: 50%; 
  background: #04AA6D;
  cursor: pointer;
}

.slider::-moz-range-thumb {
  width: 25px;
  height: 25px;
  border-radius: 50%;
  background: #04AA6D;
  cursor: pointer;
}





</style>

</head>
<header>
        
       
         <nav class="navbar navbar-expand-md navbar-dark"
		style="background-color: 0A1D37">
			<div>
				<a class="navbar-brand" style="font-family: 'Pacifico', cursive; color:white"><i class="fas fa-tint"></i> Gestion des points d'eau </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link" style="font-family: 'Pacifico', cursive; color:white;"><i class="fas fa-eye"></i> Afficher les points d'eau</a></li>
			</ul>
		</nav>
		
</header>

<body>

 <br>
 <div class="container col-md-5">
		<div class="card" style="background-color:#93B5C6C0">
			<div class="card-body">
				<c:if test="${user != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${user == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${user != null}">
            			Edit User
            		</c:if>
						<c:if test="${user == null}">
						<div style="font-family: 'Covered By Your Grace', cursive;"><i class="fas fa-hand-holding-water"></i>  Ajouter un nouveau point d'eau</div>
						
            		</c:if>
					</h2>
				</caption>
				<br>

				<c:if test="${user != null}">
					<input type="hidden" name="id" value="<c:out value='${user.id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label ><i class="fas fa-signature"></i> DR</label> <input type="text"
						value="<c:out value='${user.dr}' />" class="form-control"
						name="dr" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label ><i class="fas fa-signature"></i> DP</label> <input type="text"
						value="<c:out value='${user.dp}' />" class="form-control"
						name="dp" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label ><i class="fas fa-signature"></i> CENTRE</label> <input type="text"
						value="<c:out value='${user.centre}' />" class="form-control"
						name="centre" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label ><i class="fas fa-signature"></i> SITE</label> <input type="text"
						value="<c:out value='${user.site}' />" class="form-control"
						name="site" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label ><i class="fas fa-signature"></i> COORDONNEES LAMBERT</label> <input type="text"
						value="<c:out value='${user.coordonneeslambert}' />" class="form-control"
						name="coordonneeslambert" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label ><i class="fas fa-signature"></i> SOURCE ENERGIE</label> <input type="text"
						value="<c:out value='${user.sourceenergie}' />" class="form-control"
						name="sourceenergie" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label ><i class="fas fa-signature"></i> M.E.S</label> <input type="date"
						value="<c:out value='${user.mes}' />" class="form-control"
						name="mes" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label ><i class="fas fa-signature"></i> NBR GP</label> <input type="text"
						value="<c:out value='${user.nbrgp}' />" class="form-control"
						name="nbrgp" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label ><i class="fas fa-signature"></i> Q (l/s)</label> <input type="text"
						value="<c:out value='${user.q}' />" class="form-control"
						name="q" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label ><i class="fas fa-signature"></i> HMT (m)</label> <input type="text"
						value="<c:out value='${user.hmt}' />" class="form-control"
						name="hmt" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label ><i class="fas fa-signature"></i> P kw</label> <input type="text"
						value="<c:out value='${user.p}' />" class="form-control"
						name="p" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label ><i class="fas fa-signature"></i> o COND</label> <input type="text"
						value="<c:out value='${user.ocond}' />" class="form-control"
						name="ocond" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label ><i class="fas fa-signature"></i> T VANNES</label> <input type="text"
						value="<c:out value='${user.tvannes}' />" class="form-control"
						name="tvannes" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label ><i class="fas fa-signature"></i> o VANNES (mm)</label> <input type="text"
						value="<c:out value='${user.ovannes}' />" class="form-control"
						name="ovannes" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label ><i class="fas fa-signature"></i> T_CL</label> <input type="text"
						value="<c:out value='${user.tcl}' />" class="form-control"
						name="tcl" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label ><i class="fas fa-signature"></i> o CLAP mm</label> <input type="text"
						value="<c:out value='${user.oclap}' />" class="form-control"
						name="oclap" required="required">
				</fieldset>
				
				
				
				
				
				
				
				

				<button type="submit" class="btn btn-success">Save</button>
				</form>
				
				
				
				
				
				<button onclick="getLocation()" class="btn btn-success">Afficher la position actuelle</button>

<p id="demo"></p>









				
			</div>
		</div>
	</div>
	
</body>
<script>
var x = document.getElementById("demo");

function getLocation() {
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(showPosition);
  } else { 
    x.innerHTML = "Geolocation is not supported by this browser.";
  }
}

function showPosition(position) {
  x.innerHTML = "Latitude: " + position.coords.latitude + 
  "<br>Longitude: " + position.coords.longitude;
}



var slider = document.getElementById("myRange");
var output = document.getElementById("demoo");
output.innerHTML = slider.value;

slider.oninput = function() {
  output.innerHTML = this.value;
}

var slider1 = document.getElementById("myRangee");
var output1 = document.getElementById("demooo");
output1.innerHTML = slider1.value;

slider1.oninput = function() {
  output1.innerHTML = this.value;
}












</script>

</html>
