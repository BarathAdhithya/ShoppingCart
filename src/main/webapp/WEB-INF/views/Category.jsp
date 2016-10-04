 <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en-US">
<head><title>Category</title>
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
    width:800px;
    font-size:100%;
    }
.custab tr:hover{
    box-shadow: 3px 3px 0px transparent;
    transition: 0.5s;
    background-color:skyblue;
    }
  div.UpBtn{
  margin-left:540px;
  margin-top:10px
  }  
  div.AddBtn{
  margin-left:540px;
  margin-top:10px;
  } 
    
div.Margin{
margin-left:0px;
color:indigo;
}
    
div.TableMargin
{
margin-left:500px;
color:indigo;
}    
 div.FontManip{
  
  font-weight:bold;
  font-style:italic;
  color:red;
  }
  div.Table{
  margin-left:200px;
  margin-top:40px;
  fonr-family:arial;
  font-size:100%;
  color:indigo;
  }
  body{
    background-image:url("https://truthsandillusions.files.wordpress.com/2015/02/the-left-behind.png");
    background-repeat:no-repeat;
    }

</style>
<body>
<nav class="navbar">
<div class="FontManip">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="http://localhost:8080/ShoppingCart"><span style="font-family:arial;color:indigo;">ShoppingCart</span></a>
      <a class="navbar-brand" href="http://localhost:8080/ShoppingCart"><span style="margin-left:-20px;"><img class="image-rounded" src="http://www.avalisa.com/images/detailed/7/avalisa-canvas-wall-art-navy-dog-face.jpg" width=25px height=25px></span></a>
    </div>
    <ul class="nav navbar-nav nav-tabs" style="margin-left:320px;">
      <li><a class="glyphicon glyphicon-home"href="http://localhost:8080/ShoppingCart/"><span style="font-family:arial;color:indigo;"><b></b></span></a></li>
      <li><a href="Supplier"><span style="font-family:arial;color:indigo;"><b>Supplier</b></span></a></li>
      <li><a href="Product"><span style="font-family:arial;color:indigo;"><b>Product</b></span></a></li> 
      <li class="active"><a href="Category"><span style="font-family:arial;color:indigo;"><b>Category</b></span></a></li> 
    </ul>
     <a class="navbar-brand"><span style="font-family:arial;color:indigo;margin-left:300px;">Welcome Barath</span></a>
  </div>
  </div>
</nav>
  <c:url var="addAction" value="addcategory" ></c:url>
<div class="Margin">
<form:form action="${addAction}" modelAttribute="category" id="btn-add">
   			<%-- <h3>
                    <c:if test="${category.id==0}">Add New Item</c:if>
	            	<c:if test="${!empty category.id}">
		      		Update Item for Id: <c:out value="${category.id}"/>
		      		<form:hidden path="id"/></c:if>
         </h3> --%>
	  <table>
	  
	  <tr>  <c:if test="${category.id!=0}">
	  <td> Id:</td> <td><form:input  path="id"/></td> 
	   </c:if>
	   
	    <div class="col-xs-8 col-sm-8  col-md-6 col-sm-offset-2 col-md-offset-3">
      <label class="col-md-4 form-group"  for="name"><span style="margin-left:150px;"></span>Name</label>
      <div class="col-md-4" style="margin-left:70px">
        <form:input type="text" placeholder="category name" class="form-control name" path="name"/>
      </div>
    </div>
	    <div class="col-xs-8 col-sm-8  col-md-6 col-sm-offset-2 col-md-offset-3">
      <label class="col-md-4 form-group"  for="name"><span style="margin-left:150px;"></span>Description</label>
      <div class="col-md-4" style="margin-left:70px">
        <form:input type="text" placeholder="category Description" class="form-control name" path="description"/>
      </div>
    </div>
	   <%--  <tr> <td>Price: </td> <td><form:input path="price"/></td>  --%>
		
  </tr>
              <div class="col-xs-8 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset=3">
	             <div class="col-md-4">
	              <div class="AddBtn">
    	  	      <c:if test="${category.id==0}">
			      <input type="submit" class="btn btn-success" value="Add" id="btn-add"> 
	         </c:if>
	         </div>
	         <div class="UpBtn">
	         <c:if test="${category.id!=0}">
			      <input type="submit" class="btn btn-success" value="Update" id="btn-update"> 
	         </c:if>
	         </div>
	         </div>
	         </div>
		</td> 
		<tr> <td colspan="2" class="success-msg">
		   <c:out value="${msg}"/>
		</td> 
	  </table>
	  </div>
	  <div class="container">
    <div class="Table">
    <table class="col-md-4 table custab">
    <thead bgcolor="skyblue">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Description</th>
            <th class="text-center">Action</th>
        </tr>
        </thead>
        <c:forEach var="obj" items="${allData}">
    		<tr>
		                 <td> <c:out value="${obj.id}"/> </td>
		                 <td> <c:out value="${obj.name}"/> </td>
				 		 <td> <c:out value="${obj.description}"/> </td>
		
				 <td class="text-center">
				 <a class='btn btn-info btn-xs' href="ItemBycategory/${obj.id}">
				 <span></span> Edit</a>
				 <a href="deleteproduct/${obj.id}" class="btn btn-danger btn-xs">
				 <span class="glyphicon glyphicon-remove"></span></a></td>
		      </tr>
	      </c:forEach>
    
    </thead>
    </table>
    </div>
    </div>
 </form:form>
</body>
</html> 