<!-- Narayan Das -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head><title>Available Books</title></head>
<body>
    <h2>Available Books</h2>

    <input type="button" 
           value="Add Book" 
           onclick="window.location.href='showFormForAdd'; return false;" />

    <br/><br/>
    
    <table border="1">
        <tr>
            <th>Title</th>
            <th>Author</th>
            <th>Price</th>
            <th>Action</th>
        </tr>
        
        <c:forEach var="tempBook" items="${books}">
            <tr>
                <td> ${tempBook.title} </td>
                <td> ${tempBook.author} </td>
                <td> ${tempBook.price} </td>
                <td> 
                    <a href="showFormForUpdate?bookId=${tempBook.bookId}">Update</a>
                    
                    |
                    
                    <a href="delete?bookId=${tempBook.bookId}" 
                       onclick="if (!confirm('Are you sure you want to delete this book?')) return false">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>