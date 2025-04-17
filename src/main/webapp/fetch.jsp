<%@page import="mvnn.dto.Employee"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Records</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(135deg, #ff9a9e, #fad0c4, #fbc2eb, #a18cd1, #8ec5fc, #e6e6fa);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: 'Playfair Display', serif;
            color: #333;
            padding: 20px;
        }
        .container {
            background: rgba(255, 255, 255, 0.95);
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
            padding: 30px;
            text-align: center;
            backdrop-filter: blur(10px);
            width: 80%;
            max-width: 900px;
        }
        h1 {
            font-size: 30px;
            font-weight: 700;
            color: #3f51b5;
            margin-bottom: 20px;
            text-transform: uppercase;
            letter-spacing: 1.2px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            overflow: hidden;
        }
        th, td {
            padding: 12px;
            text-align: center;
            border: 1px solid #ddd;
        }
        th {
            background: linear-gradient(135deg, #42a5f5, #478ed1);
            color: white;
        }
        td {
            background: rgba(240, 248, 255, 0.6);
        }
        .btn-container {
            margin-top: 20px;
        }
        .btn-custom {
            padding: 12px 20px;
            font-size: 16px;
            font-weight: 700;
            border: none;
            cursor: pointer;
            transition: all 0.3s ease;
        }
        .btn-edit {
            background: linear-gradient(135deg, #4CAF50, #388E3C);
            color: white;
            border-radius: 10px 30px;
        }
        .btn-edit:hover {
            background: linear-gradient(135deg, #45A049, #2E7D32);
            transform: scale(1.05);
        }
        .btn-delete {
            background: linear-gradient(135deg, #e53935, #d32f2f);
            color: white;
            border-radius: 30px 10px;
        }
        .btn-delete:hover {
            background: linear-gradient(135deg, #d32f2f, #b71c1c);
            transform: scale(1.05);
        }
        .btn-back {
            background: linear-gradient(135deg, #42a5f5, #478ed1);
            color: white;
            border-radius: 20px;
        }
        .btn-back:hover {
            background: linear-gradient(135deg, #1e88e5, #1669b7);
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <div class="container">
        <h3 style="color:Green">${m}</h3>
        <h3 style="color:Green">${emp}</h3>
        <h1>Employee Records</h1>
        <table>
            <tr>
                <th>Name</th> 
                <th>Experience</th>
                <th>Employee ID</th>
                <th>Salary</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            <% List<Employee> list = (List<Employee>)request.getAttribute("list");
               for(Employee emp : list) { %>
            <tr>
                <td><%= emp.getName() %></td>
                <td><%= emp.getExperience() %></td>
                <td><%= emp.getEid() %></td>
                <td><%= emp.getSalary() %></td>
                <td><a href="edit?id=<%= emp.getId() %>"><button class="btn-custom btn-edit">Edit</button></a></td>
                <td><a href="delete?id=<%= emp.getId() %>"><button class="btn-custom btn-delete">Delete</button></a></td>
            </tr>
            <% } %>
        </table>
        <div class="btn-container">
            <a href="/mvn_arch3" class="btn-custom btn-back">Back</a>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
