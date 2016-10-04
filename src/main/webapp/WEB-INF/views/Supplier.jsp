 <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en-US">
<head><title>Supplier</title>
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
    padding: 60px;
    margin: 5% 0;
    box-shadow: 3px 3px 2px #ccc;
    transition: 0.5s;
    width:800px;
    }
.custab tr:hover{
    box-shadow: 3px 3px 0px transparent;
    transition: 0.5s;
    background-color:skyblue;
    }
    
    
div.AddBtn{

margin-left:385px;
margin-top:20px;
}    
div.TableMargin
{
margin-left:40px;
color:indigo;
}    
 div.FontManip{
  
  font-weight:bold;
  font-style:italic;
  color:red;
  }
  div.Table{
  margin-top:120px;
  margin-left:200px;
  fonr-family:arial;
  font-size:100%;
  width:800px;
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
      <li><a class="glyphicon glyphicon-home"href="http://localhost:8080/ShoppingCart/"><span style="font-family:arial;color:indigo;"><b></b></span></a></li>
      <li class="active"><a href="Supplier"><span style="font-family:arial;color:indigo;"><b>Supplier</b></span></a></li>
      <li><a href="Product"><span style="font-family:arial;color:indigo;"><b>Product</b></span></a></li> 
      <li><a href="Category"><span style="font-family:arial;color:indigo;"><b>Category</b></span></a></li> 
    </ul>
     <a class="navbar-brand"><span style="font-family:arial;color:indigo;margin-left:300px;">Welcome Barath</span></a>
  </div>
  </div>
</nav>
  <c:url var="addAction" value="addsupplier" ></c:url>

<form:form action="${addAction}" modelAttribute="supplier" id="btn-add">
<div class="form-group">
<div class="TableMargin">
<form class="form-horizontal">
   <h3>
                    
         </h3>
	  <table>
	  
	  <tr>  <c:if test="${supplier.id!=0}">
	  <td><span style="font-family:arial;color:darkblue;font-size:80%;"><strong> Id</strong></span></td> <td><form:input  path="id"/></td> 
	   </c:if>
	    <div class="col-xs-8 col-sm-8  col-md-6 col-sm-offset-2 col-md-offset-3">
      <label class="col-md-4 form-group"  for="name"><span style="margin-left:120px;"></span>Name</label>
      <div class="col-md-4" style="margin-left:45px">
        <form:input type="text" placeholder="Supplier name" class="form-control name" path="name"/>
      </div>
    </div>
   
	   <div class="col-xs-8 col-sm-8  col-md-6 col-sm-offset-2 col-md-offset-3">
      <label class="col-md-4 form-group"  for="name"><span style="margin-left:120px;"></span>address</label>
      <div class="col-md-4" style="margin-left:45px">
        <form:input type="text" placeholder="Address" class="form-control name" path="address"/>
      </div>
    </div>
	    <%-- <tr> <td>Price: </td> <td><form:input path="price"/></td>  --%>
		
          <div class="col-xs-8 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
    <div class="col-md-4 ">
    <div class="AddBtn">
	    
    	        <c:if test="${supplier.id==0}">
			      <input type="submit" class="btn btn-success" value="Add" id="btn-add"> 
	         </c:if>
	         <c:if test="${supplier.id!=0}">
			      <input type="submit" class="btn btn-success" value="Update" id="btn-update"> 
	         </c:if>
	         </div>
	         </div>
	         </div>
		</td> 
		<tr> 
		
		<td colspan="2" class="success-msg">
		   <c:out value="${msg}"/>
		</td> 
		
	  </table>
	  </form>
	  </div>
	  </div>
	  <div class="container">
	  <div class="Table">
	  <div class="table-responsive">
    
    <table class="col-md-6 table custab">
    <thead bgcolor="skyblue">
        <tr>
            <th><span style="font-family:arial;color:indigo;font-size:100%;"><strong>Id</strong></span></th>
           <th><span style="font-family:arial;color:indigo;font-size:100%;"><strong>Name</strong></span></th>
            <th><span style="font-family:arial;color:indigo;font-size:100%;"><strong>Address</strong></span></th>
            <th class="text-center"><span style="font-family:arial;color:indigo;font-size:100%;"><strong>Action</strong></span></th>
</thead>
        </tr>
        <c:forEach var="obj" items="${allData}">
    		<tr>
		                 <td> <c:out value="${obj.id}"/> </td>
		                 <td> <c:out value="${obj.name}"/> </td>
				 		 <td> <c:out value="${obj.address}"/> </td>
		
				 <td class="text-center">
				 <a class='btn btn-info btn-xs' href="ItemBysupplier/${obj.id}">
				 <span ></span> Edit</a>
				 <a href="deleteproduct/${obj.id}" class="btn btn-danger btn-xs">
				 <span class="glyphicon glyphicon-remove"></span></a></td>
		      </tr>
	      </c:forEach>
    
    </thead>
    </table>
    </div>
    
	  
	  <%-- <table>   
			<tr>
			 		<td> ID </td>
		        	<td> Name </td>
				 	<td> Address</td>
				 	<!-- <td> Price </td> -->
				 	<td colspan="2"> Action </td>
	      	</tr>
                    <c:forEach  var="obj" items="${allData}">		      
                    <tr>
		                 <td> <c:out value="${obj.id}"/> </td>
		                 <td> <c:out value="${obj.name}"/> </td>
				 		<td> <c:out value="${obj.address}"/> </td>
				 <td> <c:out value="${obj.price}"/> </td>
				
				 <td> <a href="deletesupplier/${obj.id}">Delete </a> |
				     <a href="ItemBysupplier/${obj.id}">Edit</a> 
				 </td>
		      </tr>
	    </c:forEach>
          </table>  --%>
          </div>
    </div>
 </form:form>
  
</body>
</html> 