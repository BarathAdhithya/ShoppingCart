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
    
 div.UpBtn
{
margin-left:390px;

}  
div.AddBtn
{
margin-left:416px;

}    
 div.FontManip{
  
  font-weight:bold;
  font-style:italic;
  color:red;
  }
  div.Table{
  margin-top:214px;
  margin-left:200px;
  fonr-family:arial;
  font-size:100%;
  width:800px;
  }
   div.Margin{
  /* margin-top:0px;
  border-left-style:solid;
  border-left-color:red;
  margin-left:500px; */
  margin-top:-28px;
  color:indigo;
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
      <li><a class="glyphicon glyphicon-home" href="http://localhost:8080/ShoppingCart/"><span style="font-family:arial;color:indigo;"><b></b></span></a></li>
      <li><a href="Supplier"><span style="font-family:arial;color:indigo;"><b>Supplier</b></span></a></li>
      <li class="active"><a href="Product"><span style="font-family:arial;color:indigo;"><b>Product</b></span></a></li> 
      <li><a href="Category"><span style="font-family:arial;color:indigo;"><b>Category</b></span></a></li> 
    </ul>
     <a class="navbar-brand"><span style="font-family:arial;color:indigo;margin-left:300px">Welcome Barath</span></a>
  </div>
  </div>
</nav>
  <c:url var="addAction" value="addproduct" ></c:url>

<form:form action="${addAction}" modelAttribute="product" id="btn-add">
   <%-- <h3>
                   <c:if test="${product.id==0}"></c:if>
	            	<c:if test="${!empty product.id}">
		       <c:out value="${product.id}"/>
		      <form:hidden path="id"/>
	            </c:if>
         </h3> --%>
  

    <div class="form-group">
    <div class="Margin">
    <form class="form-horizontal">
        <p>   <br> </p>
    <table>
    <%-- 
    	<tr><c:if test="${product.id!=0}">
    	<label for="id">Id:</label>
      	<form:input path="id" style="width:30%"/></c:if> --%>
      
	  <tr>  <c:if test="${product.id!=0}">
	          
	  		 <td><span style="font-family:arial;color:darkblue;font-size:100%;"><strong>Id</strong></span></td> 
	  		 <td><span style="margin-left:30px;width:50%;"><form:input path="id"/></span></td></c:if><tr> 
	  		<%--  <td><span style="font-family:arial;color:darkblue;font-size:100%;"><strong>Name</strong></span></td> 
	  		 <td><span style="margin-left:30px;width:50%;"><form:input path="name"/></span></td> <tr> --%>
	  		  <div class="col-xs-8 col-sm-8  col-md-6 col-sm-offset-2 col-md-offset-3">
      <label class="col-md-4 form-group"  for="name"><span style="margin-left:150px;"></span>Name</label>
      <div class="col-md-4" style="margin-left:70px">
        <form:input type="text" placeholder="product name" class="form-control name" path="name"/>
      </div>
    </div>
	  		 <%-- <td><span style="font-family:arial;color:darkblue;font-size:100%;"><strong>Description</strong></span></td> 
	  		  <td><span style="margin-left:30px;width:50%;"><form:input path="description"/></span></td> <tr> --%>
	  		 
    <div class="col-xs-8 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
      <label class="col-md-4 form-group"  for="description"><span style="margin-left:150px;"></span>description</label>
      <div class="col-md-4 "style="margin-left:70px">
        <form:input type="text" placeholder="description" class="form-control name" path="description"/>
      </div>
    </div>
	  		  <%-- <td><span style="font-family:arial;color:darkblue;font-size:100%;"><strong>Price</strong></span></td> 
	  		  <td><span style="margin-left:30px;width:50%;"><form:input path="price"/></span></td> <tr>
	  		  <tr> --%>
	  		  

	  		  
	 <div class="col-xs-8 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
      <label class="col-md-4 form-group"  for="categoryid"><span style="margin-left:150px;"></span>CategoryName</label>
      <div class="col-md-4"style="margin-left:70px">
         <form:select  class="form-control product-type" path="category_id">
         <c:forEach items="${allCategory}" var="category">
         <form:option class="input1" value="${category.id}">${category.name}</form:option>
         </c:forEach>
  </form:select>
  </div>
  </div>
        <div class="col-xs-8 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3"> 
      <label class="col-md-4 form-group"  for="supplierid"><span style="margin-left:150px;"></span>SupplierName</label>
      <div class="col-md-4"style="margin-left:70px">  
 <form:select  class="form-control product-type" path="supplier_id">
         <c:forEach items="${allSupplier}" var="supplier">
         <form:option class="input1" value="${supplier.id}">${supplier.name}</form:option>
         </c:forEach>
  </form:select>
    </div>
    </div>
    <div class="col-xs-8 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
      <label class="col-md-4 form-group"  for="price"><span style="margin-left:150px;"></span>price</label>
      <div class="col-md-4 "style="margin-left:70px">
        <form:input type="text"  placeholder="product price" class="form-control name" path="price"/>
      </div>
    </div>
   
      <!-- <label class="col-md-4 form-group"  for="supplier_id">Supplier Name</label> -->
   
    <div class="col-xs-8 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
    <div class="col-md-4 ">
    <div class="UpBtn">
   <c:if test="${product.id!=0}"><br>
        <input type="submit" class="btn btn-success" value="UPDATE" id="btn-update"> 
          
          
          </c:if>
          </div>
          <div class="AddBtn">
  <c:if test="${product.id==0 }"><br>
  <input type="submit" class="btn btn-success" value="ADD" id="btn-add"> 
          </c:if>
          </div>
         </div>
         </div>
          </tr>
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
            <th><span style="font-family:arial;color:indigo;font-size:100%;"><strong>Description</strong></span></th>
            <th><span style="font-family:arial;color:indigo;font-size:100%;"><strong>CategoryId</strong></span></th>
            <th><span style="font-family:arial;color:indigo;font-size:100%;"><strong>SupplierId</strong></span></th>
            <th><span style="font-family:arial;color:indigo;font-size:100%;"><strong>Price</strong></span></th>
            <th class="text-center"><span style="font-family:arial;color:indigo;font-size:100%;"><strong>Action</strong></span></th>
        </tr>
        
       </thead>
     <!--  <label class="col-md-4 form-group"  for="category_id">Category Name</label> -->
        
        <c:forEach var="obj" items="${allData}">
    		<tr>
		                 <td> <c:out value="${obj.id}"/> </td>
		                 <td> <c:out value="${obj.name}"/> </td>
				 		 <td> <c:out value="${obj.description}"/> </td>
				 		 <td> <c:out value="${obj.category_id}"/> </td>
				         <td> <c:out value="${obj.supplier_id}"/> </td>
				 		 <td> <c:out value="${obj.price}"/> </td>
		
				 <td class="text-center">
				 <a class='btn btn-info btn-xs' href="ItemByproduct/${obj.id}">
				 <!-- <span class="glyphicon glyphicon-edit"></span>--> Edit</a>
				 <a href="deleteproduct/${obj.id}" class="btn btn-danger btn-xs">
				 <span class="glyphicon glyphicon-remove"></span></a></td>
		      </tr>
	      </c:forEach>
    
    </table>
    </div>
</div> 
</div>

 </form:form>
  </body>
</html>  