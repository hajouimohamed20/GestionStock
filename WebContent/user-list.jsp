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
<style>
body {
  
  background-image: url('https://onepci.net/wp-content/uploads/2020/05/LOGO-ONEP_HD-1.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}



</style>
	
</head>
<header>
		<nav class="navbar navbar-expand-md navbar-dark"
		style="background-color: 0A1D37">
			<div>
				<a class="navbar-brand" style="font-family: 'Pacifico', cursive; color:white"><i class="fas fa-tint"></i> Gestion des points d'eau  </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link" style="font-family: 'Pacifico', cursive; color:white;"><i class="fas fa-eye"></i> Afficher les points d'eau</a></li>
			</ul>
			
       
    </div>
		
			
		</nav>
	</header>
<body>


	<div class="row" style="margin-right:300px">
		

		<div class="container">
		<br>
			<h3 class="text-center" style="font-family: 'Pacifico', cursive;
font-family: 'Tourney', cursive; color:black"><i class="fas fa-list"></i> Liste des points d'eau</h3>
			
			<hr>
			<div class="container text-left">

				<a href="<%=request.getContextPath()%>/new" class="btn btn-success"><i class="fa fa-plus-square" aria-hidden="true"></i> Ajouter un nouveau point d'eau</a>
			</div>
			<br>
			 <table class="table table-striped  " style="background-color: #93B5C6BF  ">
			 <thead class="table" style="background-color: #93B5C6D9" >
            
            <tr>
                <th>ID</th>
                <th>DR</th>
                <th>DP</th>
                <th>CENTRE</th>
                <th>SITE</th>
                <th>COORDONNEES LAMBERT</th>
                <th>SOURCE ENERGIE</th>
                <th>M.E.S</th>
                <th>NBR GP</th>
                <th>Q (l/s)</th>
                <th>HMT (m)</th>
                <th>P kw</th>
                <th>o COND</th>
                <th>T VANNES</th>
                <th>o VANNES (mm)</th>
                <th>T_CL</th>
                <th>o CLAP mm</th>
            </tr>
              </thead>
            
            <c:forEach var="user" items="${listUser}">
                <tr>
                    <td><c:out value="${user.id}" /></td>
                    <td><c:out value="${user.dr}" /></td>
                    <td><c:out value="${user.dp}" /></td>
                    <td><c:out value="${user.centre}" /></td>
                    <td><c:out value="${user.site}" /></td>
                    <td><c:out value="${user.coordonneeslambert}" /></td>
                    <td><c:out value="${user.sourceenergie}" /></td>
                    <td><c:out value="${user.mes}" /></td>
                    <td><c:out value="${user.nbrgp}" /></td>
                    <td><c:out value="${user.q}" /></td>
                    <td><c:out value="${user.hmt}" /></td>
                    <td><c:out value="${user.p}" /></td>
                    <td><c:out value="${user.ocond}" /></td>
                    <td><c:out value="${user.tvannes}" /></td>
                    <td><c:out value="${user.ovannes}" /></td>
                    <td><c:out value="${user.tcl}" /></td>
                    <td><c:out value="${user.oclap}" /></td>
                    
                    
                    <td>
                    	<a href="edit?id=<c:out value='${user.id}' />"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                    	&nbsp;&nbsp;&nbsp;&nbsp;
                    	<a href="delete?id=<c:out value='${user.id}' />"><i class="fa fa-trash" aria-hidden="true" style="color:red;"></i></a>                    	
                    </td>
                </tr>
            </c:forEach>
        </table>
			</div>
	        
	        
	        </div>
	        
	        
   
</body>
</html>
