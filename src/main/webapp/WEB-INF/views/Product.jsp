<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en-US">
<head><title>Product</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/app-resources/js/lib/jquery-2.2.3.min.js"></script>
  	<script src="${pageContext.request.contextPath}/app-resources/js/myapp.js"></script>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/app-resources/css/style.css"/>
</head>

<style>
.custab{
    border: 1px solid #ccc;
    padding: 5px;
    margin: 5% 0;
    box-shadow: 3px 3px 2px #ccc;
    transition: 0.5s;
    }
.custab:hover{
    box-shadow: 3px 3px 0px transparent;
    transition: 0.5s;
    }
    
    
div.TableMargin
{
margin-left:350px;
border-color:white;
border-width:2px;
border-left-style:solid;
margin-right:500px;
border-collapse:separate;
padding-left:15px;
}    
 div.FontManip{
  
  font-weight:bold;
  font-style:italic;
  color:red;
  }
  div.Table{
  margin-left:55px;
  margin-top:40px;
  fonr-family:arial;
  font-size:80%;
  }
  
  body{
    background-image:url("https://truthsandillusions.files.wordpress.com/2015/02/the-left-behind.png");
    background-repeat:no-repeat;
    }
</style>

<body>
<nav class="navbar navbar-deafault">
<div class="FontManip">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="http://localhost:8080/ShoppingCart"><span style="font-family:arial;color:indigo;">ShoppingCart</span></a>
      <a class="navbar-brand" href="http://localhost:8080/ShoppingCart"><span style="margin-left:-20px;"><img class="image-rounded" src="http://www.avalisa.com/images/detailed/7/avalisa-canvas-wall-art-navy-dog-face.jpg" width=25px height=25px></span></a>
    </div>
    <ul class="nav navbar-nav nav-tabs" style="margin-left:320px;">
      <li><a href="http://localhost:8080/ShoppingCart/"><span style="font-family:arial;color:indigo;"><b>Home</b></span></a></li>
      <li><a href="Supplier"><span style="font-family:arial;color:indigo;"><b>Supplier</b></span></a></li>
      <li><a href="Product"><span style="font-family:arial;color:indigo;"><b>Product</b></span></a></li> 
      <li><a href="Category"><span style="font-family:arial;color:indigo;"><b>Category</b></span></a></li> 
    </ul>
     <a class="navbar-brand"><span style="font-family:arial;color:indigo;margin-left:300px">Welcome Barath</span></a>
  </div>
  </div>
</nav>
  <c:url var="addAction" value="addproduct" ></c:url>

<form:form action="${addAction}" modelAttribute="product" id="btn-add">
   <h3>
    <%--                 <c:if test="${product.id==0}"></c:if>
	            	<c:if test="${!empty product.id}">
		       <c:out value="${product.id}"/>
		      <form:hidden path="id"/>
	            </c:if>
     --%>     </h3>
  
<div class="container">
    <div class="form-group">
    <div class="TableMargin">
        <p>   <br> </p>
    <table>
    <%-- 
    	<tr><c:if test="${product.id!=0}">
    	<label for="id">Id:</label>
      	<form:input path="id" style="width:30%"/></c:if> --%>
      
	  <tr>  <c:if test="${product.id!=0}">
	          <br>
	  		 <td><span style="font-family:arial;color:darkblue;font-size:80%;"><strong>Id</strong></span></td> 
	  		 <td><span style="margin-left:30px;width:50%;"><form:input path="id"/></span></td></c:if><tr> 
	  		 <td><span style="font-family:arial;color:darkblue;font-size:80%;"><strong>Name</strong></span></td> 
	  		 <td><span style="margin-left:30px;width:50%;"><form:input path="name"/></span></td> <tr>
	  		 <td><span style="font-family:arial;color:darkblue;font-size:80%;"><strong>Description</strong></span></td> 
	  		 <td><span style="margin-left:30px"><form:input path="description"/></span> </td> <tr>
	  		  <tr>
				<td>Category:</td>
				<td><form:select path="categoryid" required="true">
				<c:forEach items="${allInfo}" var="category">
								<form:option class="input1" value="${category.id}">${category.name}</form:option>
							</c:forEach>
								</form:select></td>
								<tr>
								<td>Supplier:</td>
				<td><form:select path="supplierid" required="true">
				<c:forEach items="${allSupplier}" var="supplier">
								<form:option class="input1" value="${supplier.id}">${supplier.name}</form:option>
							</c:forEach>
								</form:select></td></tr>
	  		 
	  		   <td><span style="font-family:arial;color:darkblue;font-size:80%;"><strong>Price</strong></span></td> 
	  		 <td><span style="margin-left:30px"><form:input path="price"/></span></td> <tr> 
	  		 <td colspan="2">
    	        <c:if test="${product.id==0}">
    	        <br>
			      <input type="submit" class="btn btn-success" style="margin-left:230px;"value="ADD" id="btn-add"> 
	         </c:if>
	         <c:if test="${product.id!=0}">
	         <br>
			      <input type="submit" class="btn btn-success" style="margin-left:230px;"value="UPDATE" id="btn-update"> 
	         </c:if>
		</td> 
		<tr> <td colspan="2" class="success-msg">
		   <c:out value="${msg}"/>
		</td> 
	  </table>
	  <form:select id="category_id" name="category_id" class="form-control product-type" path="category_id">
         <c:forEach items="${allCategory}" var="category">
         <form:option class="input1" value="${category.id}">${category.id}</form:option>
         </c:forEach>
  </form:select>
      </div>
      
	  <div class="container">
	  <div class="Table">
     <div class="row col-md-6 col-md-offset-2 custyle">
    <table class="table table-striped custab">
    <thead>
        <tr>
            <th><span style="font-family:arial;color:navy;font-size:80%;"><strong>Id</strong></span></th>
            <th><span style="font-family:arial;color:navy;font-size:80%;"><strong>Name</strong></span></th>
            <th><span style="font-family:arial;color:navy;font-size:80%;"><strong>Description</strong></span></th>
            <th><span style="font-family:arial;color:navy;font-size:80%;"><strong>Price</strong></span></th>
            <th class="text-center"><span style="font-family:arial;color:navy;font-size:80%;"><strong>Action</strong></span></th>
        </tr>
        <c:forEach var="obj" items="${allData}">
    		<tr>
		                 <td> <c:out value="${obj.id}"/> </td>
		                 <td> <c:out value="${obj.name}"/> </td>
				 		 <td> <c:out value="${obj.description}"/> </td>
				 		 <td> <c:out value="${obj.price}"/> </td>
		
				 <td class="text-center">
				 <a class='btn btn-info btn-xs' href="ItemByproduct/${obj.id}">
				 <span class="glyphicon glyphicon-edit"></span> Edit</a>
				 <a href="deleteproduct/${obj.id}" class="btn btn-danger btn-xs">
				 <span class="glyphicon glyphicon-remove"></span>Delete</a></td>
		      </tr>
	      </c:forEach>
    
    </thead>
    </table>
    </div>
</div> 
</div>
 </form:form>
  </body>
</html>  