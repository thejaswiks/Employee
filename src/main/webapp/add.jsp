<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Employee Record</title>
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
            padding: 20px;
        }
        .card {
            background: rgba(255, 255, 255, 0.95);
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
            padding: 40px;
            text-align: center;
            backdrop-filter: blur(10px);
            width: 400px;
        }
        .card h1 {
            font-size: 30px;
            font-weight: 700;
            color: #3f51b5;
            margin-bottom: 20px;
            text-transform: uppercase;
            letter-spacing: 1.2px;
        }
        .form-group {
            margin-bottom: 15px;
            text-align: left;
        }
        .form-group label {
            font-weight: 700;
            font-size: 14px;
        }
        .form-control {
            border-radius: 10px;
            padding: 10px;
            font-size: 14px;
            border: 2px solid #ddd;
            transition: all 0.3s ease;
        }
        .form-control:focus {
            border-color: #3f51b5;
            box-shadow: 0 0 6px rgba(63, 81, 181, 0.3);
        }
        .btn-container {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }
        .btn-custom {
            width: 48%;
            padding: 12px;
            font-size: 16px;
            font-weight: 700;
            border-radius: 25px;
            border: none;
            cursor: pointer;
            transition: all 0.3s ease;
        }
        .btn-add {
            background: linear-gradient(135deg, #ff758c, #ff7eb3);
            color: white;
        }
        .btn-add:hover {
            background: linear-gradient(135deg, #ff5c6c, #ff739e);
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
    <div class="card">
        <h1>Add Employee Record</h1>
        <form action="add" method="post">
            <div class="form-group">
                <label>Name:</label>
                <input type="text" name="name" class="form-control" required>
            </div>
            <div class="form-group">
                <label>Employee ID:</label>
                <input type="text" name="eid" class="form-control" required>
            </div>
            <div class="form-group">
                <label>Salary:</label>
                <input type="text" name="salary" class="form-control" required>
            </div>
            <div class="form-group">
                <label>Experience:</label>
                <input type="text" name="experience" class="form-control" required>
            </div>
            <div class="btn-container">
                <button type="submit" class="btn btn-custom btn-add">Add</button>
                <a href="main.jsp" class="btn btn-custom btn-back">Back</a>
            </div>
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
