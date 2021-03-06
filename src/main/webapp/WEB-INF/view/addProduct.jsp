

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/view/template/header.jsp"%>



<div class="container">
    <div class="page-header">
        <h1>Add Product</h1>
        <p class="lead">Fill the below information to add a product: </p>
    </div>
    <form:form action="${pageContext.request.contextPath}/admin/product/addProduct" enctype="multipart/form-data" method="post" commandName="product">
    <div class="form-group">
        <label for="name">Name</label><form:errors path="productName" cssStyle="color:#ff0000;"/>
        <form:input path="productName" id="name" type="text" class="form-control" />
    </div>
    <div class="form-group">
        <label for="category">Category</label>
        <label class="checkbox-inline">
            <form:radiobutton path="productCategory" id="category" value="instrument" />
            Instrument
        </label>
        <label class="checkbox-inline">
            <form:radiobutton path="productCategory" id="category" value="record" />
            Record
        </label>
        <label class="checkbox-inline">
            <form:radiobutton path="productCategory" id="category"  value="accessory" />
            Accessory
        </label>

    </div>

    <div class="form-group">
        <label for="description">Description</label>
        <form:textarea path="productDescription" id="description" class="form-control" ></form:textarea>
    </div>
    <div class="form-group">
        <label for="price">Price</label><form:errors path="productPrice" cssStyle="color:#ff0000;"/>
        <form:input path="productPrice" id="price" type="text" class="form-control" />
    </div>
    <div class="form-group">
        <label for="category">Condition</label>
        <label class="checkbox-inline">
            <form:radiobutton path="productCondition" id="condition"  value="new" />
            New
        </label>
        <label class="checkbox-inline">
            <form:radiobutton path="productCondition" id="condition" value="used" />
            Used
        </label>
    </div>

    <div class="form-group">
        <label for="status">Status</label>
        <label class="checkbox-inline">
            <form:radiobutton path="productStatus" id="status"    value="active" />
            Active
        </label>
        <label class="checkbox-inline">
            <form:radiobutton path="productStatus" id="status"  value="inactive" />
            Inactive
        </label>
    </div>
    <div class="form-group">
        <label for="unitInStock">Unit In Stock</label><form:errors path="unitInStock" cssStyle="color:#ff0000;"/>
        <form:input path="unitInStock" id="unitInStock" type="text" class="form-control" />
    </div>
    <div class="form-group">
        <label for="manufactorer">Manufacturer</label>
        <form:input path="productManufacturer" id="manufactorer"  type="text" class="form-control" />
    </div>
    <div class="form-group">
        <label class="control-label" for="image">Upload Picture</label>
        <form:input  path="productImage" id="image"  type="file" class="form:input-large" />
    </div>
    <br>
    <br>
    <input type="submit" value="submit" class="btn btn-primary"/>
    <a href="<c:url value="/admin/productInventory/"/>" class="btn btn-default">Cancel</a>
    </form:form>




<%@include file="/WEB-INF/view/template/footer.jsp"%>