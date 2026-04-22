<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Listed Items</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
          crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="style.css">
    <style>
        /* Global Styles */
        :root {
            --primary-color: #1e8875;
            --secondary-color: #e9f7f4;
            --accent-color: #f8b400;
            --text-dark: #333333;
            --text-light: #ffffff;
            --shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            --hover-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
        }

        body {
            background: linear-gradient(135deg, #f8f9fa, #e9f7f4);
            font-family: 'Poppins', sans-serif;
            color: var(--text-dark);
            min-height: 100vh;
        }

        /* Navbar Styling */
        .navbar {
            background: linear-gradient(90deg, #1e8875 0%, #146d5c 100%) !important;
            padding: 1rem;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        .navbar-brand {
            font-size: 2rem;
            font-weight: 800;
            color: var(--text-light) !important;
            letter-spacing: 1px;
            text-transform: uppercase;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.2);
            position: relative;
        }

        .navbar-brand::before {
            content: "♻";
            margin-right: 8px;
        }

        .nav-link {
            color: var(--text-light) !important;
            font-size: 1.1rem;
            font-weight: 600;
            padding: 0.5rem 1rem !important;
            margin: 0 5px;
            border-radius: 5px;
            transition: all 0.3s ease;
        }

        .nav-link:hover {
            background-color: rgba(255, 255, 255, 0.2);
            color: var(--accent-color) !important;
            transform: translateY(-2px);
        }

        .navbar-toggler {
            border: 2px solid white;
            padding: 0.5rem;
        }

        .navbar-toggler-icon {
            background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 30 30'%3e%3cpath stroke='rgba(255, 255, 255, 1)' stroke-linecap='round' stroke-miterlimit='10' stroke-width='2' d='M4 7h22M4 15h22M4 23h22'/%3e%3c/svg%3e");
        }

        /* Page Header */
        .page-header {
            position: relative;
            margin-bottom: 3rem;
            padding-bottom: 1rem;
        }

        .page-header h2 {
            font-size: 2.5rem;
            font-weight: 800;
            color: var(--primary-color);
            text-transform: uppercase;
            text-align: center;
            margin-bottom: 0.5rem;
        }

        .page-header p {
            font-size: 1.2rem;
            color: #666;
            text-align: center;
            max-width: 700px;
            margin: 0 auto;
        }

        .page-header::after {
            content: "";
            position: absolute;
            bottom: 0;
            left: 50%;
            transform: translateX(-50%);
            width: 100px;
            height: 4px;
            background: linear-gradient(90deg, var(--primary-color), var(--accent-color));
            border-radius: 2px;
        }

        /* Card Styling */
        .card {
            border: none;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: var(--shadow);
            background-color: #fff;
            color: var(--text-dark);
            padding: 0;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            height: 100%;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: var(--hover-shadow);
        }

        .card-header {
            background: linear-gradient(90deg, var(--primary-color), #146d5c);
            padding: 1rem 1.5rem;
            border-bottom: none;
        }

        .card-title {
            font-size: 1.5rem;
            font-weight: 700;
            color: white;
            margin-bottom: 0;
        }

        .card-body {
            padding: 1.5rem;
        }

        .info-item {
            display: flex;
            align-items: center;
            margin-bottom: 1rem;
            padding-bottom: 1rem;
            border-bottom: 1px dashed #eee;
        }

        .info-item:last-child {
            margin-bottom: 0;
            padding-bottom: 0;
            border-bottom: none;
        }

        .info-icon {
            flex-shrink: 0;
            width: 40px;
            height: 40px;
            background-color: var(--secondary-color);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-right: 1rem;
            color: var(--primary-color);
        }

        .info-content {
            flex-grow: 1;
        }

        .info-label {
            font-weight: 600;
            color: #666;
            font-size: 0.9rem;
            margin-bottom: 0.2rem;
        }

        .info-value {
            font-weight: 500;
            font-size: 1.1rem;
            color: var(--text-dark);
        }

        /* Badge Styling */
        .product-badge {
            display: inline-block;
            padding: 0.5rem 1rem;
            background-color: var(--primary-color);
            color: white;
            border-radius: 50px;
            font-weight: 600;
            font-size: 0.9rem;
        }

        /* Contact Button */
        .contact-btn {
            display: inline-block;
            padding: 0.5rem 1.5rem;
            background: linear-gradient(90deg, var(--primary-color), #146d5c);
            color: white;
            border-radius: 50px;
            font-weight: 600;
            font-size: 1rem;
            text-decoration: none;
            transition: all 0.3s ease;
            border: none;
            margin-top: 1rem;
            box-shadow: 0 4px 10px rgba(30, 136, 117, 0.3);
        }

        .contact-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 6px 15px rgba(30, 136, 117, 0.4);
            background: linear-gradient(90deg, #146d5c, var(--primary-color));
        }

        /* Empty List Message */
        .empty-list {
            text-align: center;
            padding: 3rem;
            background-color: white;
            border-radius: 15px;
            box-shadow: var(--shadow);
        }

        .empty-list i {
            font-size: 4rem;
            color: #ccc;
            margin-bottom: 1rem;
        }

        .empty-list h3 {
            font-size: 1.8rem;
            color: #666;
            margin-bottom: 1rem;
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

        .animate-fadeInUp {
            animation: fadeInUp 0.5s ease-out forwards;
        }

        /* Staggered animation */
        .staggered-item:nth-child(1) { animation-delay: 0.1s; }
        .staggered-item:nth-child(2) { animation-delay: 0.2s; }
        .staggered-item:nth-child(3) { animation-delay: 0.3s; }
        .staggered-item:nth-child(4) { animation-delay: 0.4s; }
        .staggered-item:nth-child(5) { animation-delay: 0.5s; }
        .staggered-item:nth-child(6) { animation-delay: 0.6s; }

        /* Responsive Design */
        @media (max-width: 992px) {
            .navbar-brand {
                font-size: 1.8rem;
            }
            .page-header h2 {
                font-size: 2rem;
            }
        }

        @media (max-width: 768px) {
            .navbar-brand {
                font-size: 1.6rem;
            }
            .nav-link {
                font-size: 1rem;
                padding: 0.5rem 0.8rem !important;
            }
            .page-header h2 {
                font-size: 1.8rem;
            }
            .page-header p {
                font-size: 1rem;
            }
            .card-title {
                font-size: 1.3rem;
            }
            .info-value {
                font-size: 1rem;
            }
        }

        @media (max-width: 576px) {
            .page-header h2 {
                font-size: 1.5rem;
            }
            .info-icon {
                width: 30px;
                height: 30px;
                font-size: 0.8rem;
            }
            .contact-btn {
                font-size: 0.9rem;
                padding: 0.4rem 1.2rem;
            }
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg">
    <div class="container">
        <a class="navbar-brand" href="#">Recycle Hub</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="home"><i class="fas fa-home me-1"></i> Home</a></li>
                <li class="nav-item"><a class="nav-link" href="allItem"><i class="fas fa-recycle me-1"></i> All Items</a></li>
                <li class="nav-item"><a class="nav-link" href="https://www.linkedin.com/in/akash-sutradhar-b6a305287?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3BmsBgEzVqTOuhGlzlUk%2Bg0w%3D%3D"><i class="fas fa-envelope me-1"></i> Contact Us</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container mt-5">
    <div class="page-header animate-fadeInUp">
        <h2><i class="fas fa-list-alt me-2"></i>Listed Items</h2>
        <p>Available recycling items for environmental organizations</p>
    </div>

    <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4">
        <c:forEach var="item" items="${items}" varStatus="status">
            <div class="col staggered-item animate-fadeInUp">
                <div class="card">
                    <div class="card-header">
                        <h5 class="card-title">${item.name}</h5>
                    </div>
                    <div class="card-body">
                        <div class="info-item">
                            <div class="info-icon">
                                <i class="fas fa-map-marker-alt"></i>
                            </div>
                            <div class="info-content">
                                <div class="info-label">Location</div>
                                <div class="info-value">${item.city}, ${item.district}, ${item.state}</div>
                            </div>
                        </div>

                        <div class="info-item">
                            <div class="info-icon">
                                <i class="fas fa-thumbtack"></i>
                            </div>
                            <div class="info-content">
                                <div class="info-label">Pin Code</div>
                                <div class="info-value">${item.pin}</div>
                            </div>
                        </div>

                        <div class="info-item">
                            <div class="info-icon">
                                <i class="fas fa-box"></i>
                            </div>
                            <div class="info-content">
                                <div class="info-label">Product Type</div>
                                <div class="info-value">
                                    <span class="product-badge">${item.productType}</span>
                                </div>
                            </div>
                        </div>

                        <div class="info-item">
                            <div class="info-icon">
                                <i class="fas fa-phone"></i>
                            </div>
                            <div class="info-content">
                                <div class="info-label">Contact</div>
                                <div class="info-value">${item.contact}</div>
                            </div>
                        </div>

                        <a href="tel:${item.contact}" class="contact-btn w-100 text-center">
                            <i class="fas fa-phone-alt me-2"></i>Contact Now
                        </a>
                    </div>
                </div>
            </div>
        </c:forEach>

        <c:if test="${empty items}">
            <div class="col-12 animate-fadeInUp">
                <div class="empty-list">
                    <i class="fas fa-box-open"></i>
                    <h3>No items available at the moment</h3>
                    <p>Check back later for recycling opportunities</p>
                </div>
            </div>
        </c:if>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9WDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>
</html>