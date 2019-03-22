
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
  <title> customer confirmation</title>
<body>

Customer is confirmed:
<br>
Customer name: ${customer.firstName} ${customer.lastName}

<br>

Free passes: ${customer.freePasses}
<br>

Postal Code: ${customer.postalCode}

<br>

Course Code: ${customer.courseCode}
</body>

</html>