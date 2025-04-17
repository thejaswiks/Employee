<%@page isELIgnored="false"%>

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
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: 'Playfair Display', serif;
            color: #333;
        }
        .card {
            background: rgba(255, 255, 255, 0.9);
            border-radius: 25px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
            padding: 50px;
            text-align: center;
            backdrop-filter: blur(10px);
            width: 500px;
        }
        .card h1 {
            font-size: 38px;
            font-weight: 600;
            color: #3f51b5;
            margin-bottom: 20px;
        }
        .btn-container {
            display: flex;
            justify-content: center;
            gap: 20px;
        }
        .btn-custom {
            width: 180px;
            padding: 14px;
            font-size: 18px;
            font-weight: 600;
            border-radius: 30px;
            transition: all 0.3s ease-in-out;
            text-decoration: none;
            text-align: center;
            border: none;
            cursor: pointer;
        }
        .btn-add {
            background: linear-gradient(135deg, #ff758c, #ff7eb3);
            color: white;
            box-shadow: 0 4px 10px rgba(255, 117, 140, 0.5);
        }
        .btn-add:hover {
            background: linear-gradient(135deg, #ff5c6c, #ff739e);
        }
        .btn-fetch {
            background: linear-gradient(135deg, #42a5f5, #478ed1);
            color: white;
            box-shadow: 0 4px 10px rgba(66, 165, 245, 0.5);
        }
        .btn-fetch:hover {
            background: linear-gradient(135deg, #1e88e5, #1669b7);
        }
    </style>
</head>
<body>
    <div class="card">
        <h1>Employee Records</h1>
        <h3 class="text-dark">${message}</h3>
        <div class="btn-container mt-4">
            <a href="add" class="btn btn-custom btn-add">Add Record</a>
            <a href="fetch" class="btn btn-custom btn-fetch">Fetch Record</a>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
