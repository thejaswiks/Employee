
<%@page import="mvnn.dto.Employee"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Employee Records</title>
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
            width: 50%;
            max-width: 500px;
        }
        h1 {
            font-size: 28px;
            font-weight: 700;
            color: #3f51b5;
            margin-bottom: 20px;
            text-transform: uppercase;
            letter-spacing: 1.2px;
        }
        input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }
        .btn-custom {
            padding: 12px 20px;
            font-size: 16px;
            font-weight: 700;
            border: none;
            cursor: pointer;
            transition: all 0.3s ease;
            margin-top: 10px;
            border-radius: 20px;
        }
        .btn-update {
            background: linear-gradient(135deg, #4CAF50, #388E3C);
            color: white;
        }
        .btn-update:hover {
            background: linear-gradient(135deg, #45A049, #2E7D32);
            transform: scale(1.05);
        }
        .btn-back {
            background: linear-gradient(135deg, #42a5f5, #478ed1);
            color: white;
        }
        .btn-back:hover {
            background: linear-gradient(135deg, #1e88e5, #1669b7);
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Update The Records</h1>
        <form action="edit" method="post">
            <input name="id" value="${emp.id}" type="hidden">
            <input type="text" name="name" value="${emp.name}" placeholder="Name">
            <input type="number" name="Eid" value="${emp.eid}" placeholder="Employee ID">
            <input type="number" name="Experience" value="${emp.experience}" placeholder="Experience">
            <input type="number" name="salary" value="${emp.salary}" placeholder="Salary">
            <button class="btn-custom btn-update">Update</button>
        </form>
        <a href="fetch"><button class="btn-custom btn-back">Back</button></a>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
