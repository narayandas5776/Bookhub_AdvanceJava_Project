<!-- Narayan Das -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head><title>Add New Book</title></head>
<body>
    <h2>Add New Book</h2>
    <form:form action="saveBook" modelAttribute="book" method="POST">
        <form:hidden path="bookId" /> 
        <table>
            <tr>
                <td><label>Title:</label></td>
                <td><form:input path="title" /></td>
            </tr>
            <tr>
                <td><label>Author:</label></td>
                <td><form:input path="author" /></td>
            </tr>
            <tr>
                <td><label>Price:</label></td>
                <td><form:input path="price" /></td>
            </tr>
            <tr>
                <td><input type="submit" value="Save Book" /></td>
            </tr>
        </table>
    </form:form>
    <br>
    <p><a href="list">Back to Book List</a></p>
</body>
</html>