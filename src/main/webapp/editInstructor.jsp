<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Instructor</title>
    <style>
        /* General Body Styling */
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f0f4f8;
            margin: 0;
            padding: 0;
        }

        .form-container {
            width: 40%;
            max-width: 700px;
            margin: 50px auto;
            background: linear-gradient(135deg, #ffffff, #f7f9fc);
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.15);
            border: 1px solid #e3e8f0;
        }

        .form-container h2 {
            text-align: center;
            margin-bottom: 20px;
            font-size: 24px;
            color: #1a202c;
            font-weight: 700;
            letter-spacing: 0.5px;
            text-transform: uppercase;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            margin-bottom: 6px;
            font-weight: 600;
            color: #2d3748;
            font-size: 15px;
            letter-spacing: 0.3px;
        }

        .form-group input,
        .form-group select,
        .form-group textarea {
            width: 100%;
            padding: 12px;
            border: 1px solid #cbd5e0;
            border-radius: 8px;
            font-size: 15px;
            color: #2d3748;
            background-color: #edf2f7;
            transition: border-color 0.3s, box-shadow 0.3s;
        }

        .form-group input:focus,
        .form-group select:focus,
        .form-group textarea:focus {
            border-color: #3182ce;
            box-shadow: 0 0 0 3px rgba(66, 153, 225, 0.3);
            outline: none;
        }

        .form-group button {
            width: 100%;
            padding: 12px;
            background: linear-gradient(135deg, #3182ce, #63b3ed);
            color: white;
            font-size: 16px;
            font-weight: 600;
            text-transform: uppercase;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.2s;
        }

        .form-group button:hover {
            background: linear-gradient(135deg, #2b6cb0, #4299e1);
            transform: translateY(-2px);
        }

        .form-group button:active {
            background: linear-gradient(135deg, #2c5282, #2b6cb0);
            transform: translateY(0);
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .form-container {
                width: 80%;
            }
            .form-container h2 {
                font-size: 22px;
            }
        }
    </style>
</head>
<body>
<%@ include file="admin_instructorhome.jsp" %>

    <div class="form-container">
        <h2>Edit Instructor</h2>
        <form action="/admin/updateInstructor" method="post">
            <input type="hidden" name="id" value="${instructor.id}" />
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" value="${instructor.name}" required />
            </div>
            <div class="form-group">
                <label for="gender">Gender:</label>
                <input type="text" id="gender" name="gender" value="${instructor.gender}" required />
            </div>
            <div class="form-group">
                <label for="joiningDate">Joining Date:</label>
                <input type="text" id="joiningDate" name="joiningDate" value="${instructor.joiningDate}" required />
            </div>
            <div class="form-group">
                <label for="department">Department:</label>
                <input type="text" id="department" name="department" value="${instructor.department}" required />
            </div>
            <div class="form-group">
                <label for="designation">Designation:</label>
                <input type="text" id="designation" name="designation" value="${instructor.designation}" required />
            </div>
            <div class="form-group">
                <label for="salary">Salary:</label>
                <input type="number" id="salary" name="salary" value="${instructor.salary}" required />
            </div>
            <div class="form-group">
                <label for="address">Address:</label>
                <input type="text" id="address" name="address" value="${instructor.address}" required />
            </div>
            <div class="form-group">
                <button type="submit">Update</button>
            </div>
        </form>
    </div>
</body>
</html>