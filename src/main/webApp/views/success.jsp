<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="com.GhantaSpring.neww.model.Item" %>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Recycle Hub - Submission Successful</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #f4f7f6 0%, #e8f5e9 100%);
            min-height: 100vh;
        }

        .navbar {
            background: linear-gradient(90deg, #1e8e3e 0%, #34a853 100%) !important;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            padding: 15px 0;
        }

        .navbar-brand {
            font-weight: 800;
            letter-spacing: 1px;
            text-transform: uppercase;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.2);
        }

        .navbar-brand::before {
            content: "♻ ";
        }

        .nav-link {
            font-weight: 600;
            text-transform: uppercase;
            font-size: 0.9rem;
            padding: 10px 15px !important;
            transition: all 0.3s ease;
            border-radius: 5px;
            margin: 0 5px;
        }

        .nav-link:hover {
            background-color: rgba(255, 255, 255, 0.2);
            transform: translateY(-2px);
        }

        .container.success-container {
            max-width: 900px;
            padding: 20px;
        }

        .success-header {
            text-align: center;
            margin-bottom: 30px;
            position: relative;
            padding-bottom: 15px;
        }

        .success-header::after {
            content: "";
            position: absolute;
            bottom: 0;
            left: 50%;
            transform: translateX(-50%);
            width: 100px;
            height: 4px;
            background: linear-gradient(90deg, #1e8e3e, #34a853);
            border-radius: 2px;
        }

        .success-header h2 {
            color: #1e8e3e;
            font-weight: 700;
            font-size: 2.4rem;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.1);
        }

        .card {
            border: none;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 10px 30px rgba(46, 142, 73, 0.15);
            transition: all 0.3s ease;
            background: #fff;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 15px 35px rgba(46, 142, 73, 0.2);
        }

        .card-header {
            background: linear-gradient(90deg, #1e8e3e 0%, #34a853 100%);
            color: white;
            text-align: center;
            padding: 20px;
            position: relative;
            overflow: hidden;
        }

        .card-header::before {
            content: "♻";
            position: absolute;
            font-size: 180px;
            opacity: 0.1;
            top: -40px;
            right: -40px;
            transform: rotate(15deg);
        }

        .card-title {
            font-size: 2rem;
            font-weight: 700;
            margin-bottom: 0;
            position: relative;
            z-index: 2;
        }

        .card-body {
            padding: 30px;
        }

        .info-item {
            margin-bottom: 20px;
            padding-bottom: 15px;
            border-bottom: 1px dashed #e0e0e0;
            display: flex;
            align-items: center;
        }

        .info-item:last-child {
            border-bottom: none;
            margin-bottom: 0;
        }

        .info-label {
            font-weight: 600;
            color: #666;
            min-width: 140px;
            display: flex;
            align-items: center;
        }

        .info-label i {
            margin-right: 10px;
            color: #1e8e3e;
            font-size: 1.2rem;
            width: 25px;
            text-align: center;
        }

        .info-value {
            font-weight: 500;
            color: #333;
            flex-grow: 1;
        }

        .card-footer {
            background: #e8f5e9;
            padding: 20px;
            text-align: center;
            border-top: none;
        }

        .thank-you-text {
            color: #1e8e3e;
            font-weight: 700;
            font-size: 1.3rem;
            margin: 0;
        }

        .btn-home {
            background: linear-gradient(90deg, #1e8e3e 0%, #34a853 100%);
            color: white;
            font-weight: 600;
            border: none;
            padding: 12px 30px;
            border-radius: 50px;
            margin-top: 20px;
            box-shadow: 0 4px 12px rgba(46, 142, 73, 0.3);
            transition: all 0.3s ease;
        }

        .btn-home:hover {
            transform: translateY(-2px);
            box-shadow: 0 6px 15px rgba(46, 142, 73, 0.4);
            background: linear-gradient(90deg, #34a853 0%, #1e8e3e 100%);
        }

        .error-message {
            background-color: #fff3f3;
            border-left: 5px solid #dc3545;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }

        /* Animation */
        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .animate-fade {
            animation: fadeInUp 0.6s ease-out forwards;
        }

        /* Responsive adjustments */
        @media (max-width: 768px) {
            .card-title {
                font-size: 1.6rem;
            }

            .info-item {
                flex-direction: column;
                align-items: flex-start;
            }

            .info-label {
                margin-bottom: 5px;
            }

            .navbar-brand {
                font-size: 1.5rem;
            }

            .success-header h2 {
                font-size: 1.8rem;
            }
        }

        @media (max-width: 576px) {
            .card-body {
                padding: 20px;
            }

            .card-header {
                padding: 15px;
            }

            .success-header h2 {
                font-size: 1.5rem;
            }
        }
    </style>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container">
        <a class="navbar-brand" href="#">Recycle Hub</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link text-white" href="home"><i class="fas fa-home me-1"></i> Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="allItem"><i class="fas fa-recycle me-1"></i> All Items</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="https://www.linkedin.com/in/akash-sutradhar-b6a305287?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3BEjgBrv5HRmmd62hdd34FMA%3D%3D"><i class="fas fa-envelope me-1"></i> Contact</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<%
    Item itemPost = (Item) request.getAttribute("itemPost");
    if (itemPost != null) {
%>
    <div class="container success-container mt-5 animate-fade">
        <div class="success-header">
            <h2><i class="fas fa-check-circle me-2"></i>Submission Successful</h2>
        </div>
        <div class="row justify-content-center">
            <div class="col-md-10">
                <div class="card">
                    <div class="card-header">
                        <h5 class="card-title">Recycling Request Details</h5>
                    </div>
                    <div class="card-body">
                        <div class="info-item">
                            <div class="info-label"><i class="fas fa-user"></i> Name:</div>
                            <div class="info-value"><%= itemPost.getName() %></div>
                        </div>
                        <div class="info-item">
                            <div class="info-label"><i class="fas fa-map"></i> State:</div>
                            <div class="info-value"><%= itemPost.getState() %></div>
                        </div>
                        <div class="info-item">
                            <div class="info-label"><i class="fas fa-map-marker-alt"></i> District:</div>
                            <div class="info-value"><%= itemPost.getDistrict() %></div>
                        </div>
                        <div class="info-item">
                            <div class="info-label"><i class="fas fa-city"></i> City:</div>
                            <div class="info-value"><%= itemPost.getCity() %></div>
                        </div>
                        <div class="info-item">
                            <div class="info-label"><i class="fas fa-thumbtack"></i> Pin Code:</div>
                            <div class="info-value"><%= itemPost.getPin() %></div>
                        </div>
                        <div class="info-item">
                            <div class="info-label"><i class="fas fa-box"></i> Product Type:</div>
                            <div class="info-value"><%= itemPost.getProductType() %></div>
                        </div>
                        <div class="info-item">
                            <div class="info-label"><i class="fas fa-phone"></i> Contact:</div>
                            <div class="info-value"><%= itemPost.getContact() %></div>
                        </div>
                    </div>
                    <div class="card-footer">
                        <p class="thank-you-text"><i class="fas fa-heart me-2"></i>Thank you for your contribution to a greener planet!</p>
                        <a href="home" class="btn btn-home"><i class="fas fa-arrow-left me-2"></i>Back to Home</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
<%
    } else {
%>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="error-message animate-fade">
                    <h3 class="text-danger"><i class="fas fa-exclamation-triangle me-2"></i>Error: No Item data available.</h3>
                    <p>We couldn't process your request. Please try again or contact support.</p>
                    <a href="home" class="btn btn-home mt-3"><i class="fas fa-arrow-left me-2"></i>Back to Home</a>
                </div>
            </div>
        </div>
    </div>
<%
    }
%>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>