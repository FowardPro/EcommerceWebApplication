<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Add Product Page</title>
    <link rel="stylesheet" type="text/css" href="styles.css"> <!-- Link to external CSS file -->
    <style>
        /* Internal CSS for specific styles if needed */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
            display: flex;
            transition: margin-left 0.3s; /* Smooth transition for content */
        }
        h1 {
            font-size: 36px;
            color: #495057;
            margin-bottom: 20px;
            text-transform: uppercase;
            letter-spacing: 2px;
            border-bottom: 2px solid #4CAF50;
            padding-bottom: 10px;
        }
        .sidebar {
            height: 100vh; /* Full height sidebar */
            width: 250px; /* Initially closed */
            position: fixed; /* Fixed position */
            top: 0;
            left: -250px; /* Hide by default */
            background-color: #6f42c1;
            overflow-x: hidden; /* Disable horizontal scroll */
            transition: left 0.3s; /* Smooth transition for visibility */
            padding-top: 20px;
            z-index: 1; /* Ensure sidebar is above content */
        }
        .sidebar.open {
            left: 0; /* Show sidebar when open class is applied */
        }
        .sidebar a {
            padding: 15px 20px;
            text-decoration: none;
            font-size: 18px;
            color: #ffffff;
            display: block;
            transition: background-color 0.3s, color 0.3s; /* Smooth transition on hover */
        }
        .sidebar a:hover {
            background-color: #e9ecef;
            color: #6f42c1;
        }
        .content {
            width: calc(100% - 250px); /* Adjust content width to fit after sidebar */
            padding: 20px;
            transition: margin-left 0.3s; /* Smooth transition for content */
        }
        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }
        h2 {
            margin-top: 20px;
            color: #333;
        }
        form {
            background-color: #ffffff;
            padding: 30px;
            border: 1px solid #ced4da;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        table {
            width: 100%;
            border-collapse: collapse; /* Ensure table borders collapse nicely */
            margin-bottom: 20px;
        }
        table th, table td {
            padding: 15px;
            border: 1px solid #dee2e6; /* Light border around cells */
            text-align: left;
        }
        table th {
            background-color: #f1f1f1; /* Light gray background for table headers */
        }
        input[type="text"],
        input[type="number"],
        textarea,
        input[type="file"] {
            width: calc(100% - 20px); /* Adjust for padding and border */
            padding: 12px;
            margin-bottom: 15px;
            border: 1px solid #ced4da;
            border-radius: 5px;
            font-size: 16px;
            transition: border-color 0.3s ease;
            box-sizing: border-box; /* Include padding and border in element's total width */
        }
        input[type="text"]:focus,
        input[type="number"]:focus,
        textarea:focus,
        input[type="file"]:focus {
            outline: none;
            border-color: #4CAF50; /* Change border color on focus */
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 14px 24px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin-top: 10px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        .image-preview {
            text-align: center;
            margin-bottom: 20px;
        }
        .image-preview img {
            max-width: 100%;
            max-height: 200px;
            margin-top: 10px;
            border-radius: 5px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
        }
        .menu-btn {
            font-size: 20px;
            cursor: pointer;
            padding: 2px 2px;
            background-color: #6f42c1;
            color: white;
            position: fixed;
            top: 0px;
            left: 20px;
            z-index: 2;
            border-radius: 5px;
            transition: left 0.3s; /* Smooth transition for position */
        }
        .menu-btn.close {
            left: 270px; /* Adjust to move button when sidebar is open */
        }
    </style>
</head>
<body>
    <div class="sidebar" id="sidebar"> <!-- Closed by default -->
        <!-- No close button on top of the sidebar -->
        <a href="#" class="menu-btn" onclick="toggleNav()">☰ Menu</a>
        <a href="#">Dashboard</a>
        <a href="#">Products</a>
        <a href="#">Orders</a>
        <a href="#">Customers</a>
    </div>
    <div class="content" id="content"> <!-- Add ID to content for JavaScript control -->
        <h1>Add New Product</h1>

        <form action="AddProductServlet.do" method="post" enctype="multipart/form-data">
            <h2>Product Information</h2>
            <table>
                <tbody>
                    <tr>
                        <td>Product Name:</td>
                        <td><input type="text" name="name" required></td>
                    </tr>
                    <tr>
                        <td>Quantity:</td>
                        <td><input type="number" name="quantity" required></td>
                    </tr>
                    <tr>
                        <td>Description:</td>
                        <td><textarea name="description" required></textarea></td>
                    </tr>
                    <tr>
                        <td>Normal Price:</td>
                        <td><input type="number" step="0.01" name="normalPrice" required></td>
                    </tr>
                    <tr>
                        <td>Discount:</td>
                        <td><input type="number" step="0.01" name="discount"></td>
                    </tr>
                    <tr>
                        <td>Current Price:</td>
                        <td><input type="number" step="0.01" name="currentPrice" required></td>
                    </tr>
                    <tr>
                        <td>Size:</td>
                        <td><input type="text" name="size" required></td>
                    </tr>
                    <tr>
                        <td>Images:</td>
                        <td>
                            <input type="file" name="images" accept="image/*" multiple onchange="previewImage(event)">
                            <div class="image-preview" id="imagePreview">
                                <img src="#" alt="Image Preview" id="previewImage" style="display: none;">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <input type="submit" value="Add Product">
                        </td>
                    </tr>
                </tbody>
            </table>
        </form>
    </div>

    <script>
        var sidebar = document.getElementById("sidebar");
        var content = document.getElementById("content");
        var menuBtn = document.querySelector('.menu-btn');

        function toggleNav() {
            if (sidebar.classList.contains('open')) {
                sidebar.classList.remove('open');
                menuBtn.innerHTML = '☰ Menu';
                content.style.marginLeft = '0';
                menuBtn.style.left = '20px';
                menuBtn.style.color = 'white';
            } else {
                sidebar.classList.add('open');
                menuBtn.innerHTML = 'X';
                content.style.marginLeft = '250px';
                menuBtn.style.left = '250px';
                menuBtn.style.color = 'white';
            }
        }

        function previewImage(event) {
            var reader = new FileReader();
            var preview = document.getElementById('previewImage');
            var imagePreview = document.getElementById('imagePreview');
            
            reader.onload = function() {
                preview.src = reader.result;
                preview.style.display = 'block';
                imagePreview.style.display = 'block';
            }
            
            if (event.target.files[0]) {
                reader.readAsDataURL(event.target.files[0]);
            }
        }
    </script>
</body>
</html>
