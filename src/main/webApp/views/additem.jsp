

<%@page language="java" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Item - RecycleHub</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js"></script>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;500;600;700&display=swap');

        body {
            font-family: 'Outfit', sans-serif;
            scroll-behavior: smooth;
        }

        .input-field:focus-within label {
            color: #047857;
            font-weight: 700;
            transform: translateY(-4px);
        }

        .form-effect {
            transition: all 0.3s ease;
        }

        .form-effect:focus-within {
            transform: translateY(-5px);
        }

        .progress-bar {
            height: 5px;
            background: linear-gradient(90deg, #047857 0%, #10B981 100%);
            transition: width 0.3s ease;
        }
    </style>
</head>
<body class="bg-gradient-to-br from-gray-50 to-gray-200 font-sans min-h-screen flex flex-col">
    <div class="fixed top-0 left-0 w-full z-50">
        <div id="progress-bar" class="progress-bar w-0"></div>
    </div>
    <header class="bg-gradient-to-r from-green-800 to-green-600 text-white py-5 px-6 md:px-10 flex flex-col md:flex-row justify-between items-center shadow-lg">
        <div class="flex items-center space-x-2">
            <i class="fas fa-recycle text-2xl md:text-3xl animate-pulse"></i>
            <h1 class="text-3xl font-extrabold mb-3 md:mb-0">RecycleHub</h1>
        </div>
        <div class="nav-links flex gap-6 text-lg">
            <a href="home" class="hover:text-green-200 transition-all duration-300 font-semibold relative group">
                <span>Home</span>
                <span class="absolute bottom-0 left-0 w-0 h-0.5 bg-green-200 group-hover:w-full transition-all duration-300"></span>
            </a>
            <a href="https://www.linkedin.com/in/akash-sutradhar-b6a305287" class="hover:text-green-200 transition-all duration-300 font-semibold relative group">
                <span>Contact Us</span>
                <span class="absolute bottom-0 left-0 w-0 h-0.5 bg-green-200 group-hover:w-full transition-all duration-300"></span>
            </a>
        </div>
    </header>
    <div class="container max-w-lg mx-auto my-10 p-8 bg-white rounded-2xl shadow-xl transform transition-all duration-500 hover:shadow-2xl relative overflow-hidden">
        <div class="absolute top-0 right-0 -mt-10 -mr-10 w-40 h-40 bg-green-100 rounded-full opacity-20"></div>
        <div class="absolute bottom-0 left-0 -mb-10 -ml-10 w-40 h-40 bg-orange-100 rounded-full opacity-20"></div>

        <h2 class="text-3xl font-extrabold text-center text-green-700 mb-8 relative">
            <i class="fas fa-plus-circle mr-2"></i>Add Item
        </h2>

        <form id="itemForm" action="success" method="post" class="space-y-6 relative">
            <div class="form-group form-effect">
                <div class="input-field relative">
                    <label for="name" class="block font-semibold text-gray-700 mb-2 transition-all duration-300">
                        <i class="fas fa-user-tag mr-2 text-green-600"></i>Name:
                    </label>
                    <input type="text" id="name" name="name" required
                        class="w-full p-3 border border-gray-300 rounded-lg shadow-sm focus:ring-2 focus:ring-green-500 focus:border-green-500 transition-all duration-200">
                </div>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-2 gap-5">
                <div class="form-group form-effect">
                    <div class="input-field relative">
                        <label for="state" class="block font-semibold text-gray-700 mb-2 transition-all duration-300">
                            <i class="fas fa-map mr-2 text-green-600"></i>State:
                        </label>
                        <input type="text" id="state" name="state" required
                            class="w-full p-3 border border-gray-300 rounded-lg shadow-sm focus:ring-2 focus:ring-green-500 focus:border-green-500 transition-all duration-200">
                    </div>
                </div>

                <div class="form-group form-effect">
                    <div class="input-field relative">
                        <label for="district" class="block font-semibold text-gray-700 mb-2 transition-all duration-300">
                            <i class="fas fa-map-marker-alt mr-2 text-green-600"></i>District:
                        </label>
                        <input type="text" id="district" name="district" required
                            class="w-full p-3 border border-gray-300 rounded-lg shadow-sm focus:ring-2 focus:ring-green-500 focus:border-green-500 transition-all duration-200">
                    </div>
                </div>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-2 gap-5">
                <div class="form-group form-effect">
                    <div class="input-field relative">
                        <label for="city" class="block font-semibold text-gray-700 mb-2 transition-all duration-300">
                            <i class="fas fa-city mr-2 text-green-600"></i>City:
                        </label>
                        <input type="text" id="city" name="city" required
                            class="w-full p-3 border border-gray-300 rounded-lg shadow-sm focus:ring-2 focus:ring-green-500 focus:border-green-500 transition-all duration-200">
                    </div>
                </div>

                <div class="form-group form-effect">
                    <div class="input-field relative">
                        <label for="pin" class="block font-semibold text-gray-700 mb-2 transition-all duration-300">
                            <i class="fas fa-map-pin mr-2 text-green-600"></i>Pin Code:
                        </label>
                        <input type="text" id="pin" name="pin" required
                            class="w-full p-3 border border-gray-300 rounded-lg shadow-sm focus:ring-2 focus:ring-green-500 focus:border-green-500 transition-all duration-200">
                    </div>
                </div>
            </div>

            <div class="form-group form-effect">
                <div class="input-field relative">
                    <label for="productType" class="block font-semibold text-gray-700 mb-2 transition-all duration-300">
                        <i class="fas fa-tag mr-2 text-green-600"></i>Product Type:
                    </label>
                    <div class="relative">
                        <select id="productType" name="productType" required
                            class="w-full p-3 border border-gray-300 rounded-lg shadow-sm focus:ring-2 focus:ring-green-500 focus:border-green-500 transition-all duration-200 bg-white appearance-none">
                            <option value="">Select Product Type</option>
                            <option value="clothes">Clothes</option>
                            <option value="electronics">Electronics</option>
                            <option value="furniture">Furniture</option>
                            <option value="books">Books</option>
                            <option value="toys">Toys</option>
                            <option value="kitchenware">Kitchenware</option>
                            <option value="sports equipment">Sports Equipment</option>
                            <option value="other">Other</option>
                        </select>
                        <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
                            <i class="fas fa-chevron-down"></i>
                        </div>
                    </div>
                </div>
            </div>

            <div class="form-group form-effect">
                <div class="input-field relative">
                    <label for="contact" class="block font-semibold text-gray-700 mb-2 transition-all duration-300">
                        <i class="fas fa-phone mr-2 text-green-600"></i>Contact Number:
                    </label>
                    <input type="text" id="contact" name="contact" required
                        class="w-full p-3 border border-gray-300 rounded-lg shadow-sm focus:ring-2 focus:ring-green-500 focus:border-green-500 transition-all duration-200">
                </div>
            </div>
            <button type="submit" id="submitBtn"
                class="w-full bg-gradient-to-r from-orange-500 to-orange-600 text-white py-4 rounded-lg font-bold text-lg cursor-pointer transition-all duration-300 transform hover:scale-105 hover:from-orange-600 hover:to-orange-700 shadow-md flex justify-center items-center gap-2 relative overflow-hidden group">
                <span class="relative z-10 flex items-center">
                    <i class="fas fa-paper-plane mr-2 group-hover:translate-x-1 transition-transform"></i>
                    Submit
                </span>
                <span class="absolute bottom-0 left-0 w-full h-0 bg-orange-700 transition-all duration-300 group-hover:h-full -z-0"></span>
            </button>
        </form>
    </div>
    <footer class="mt-auto bg-gray-800 text-gray-300 py-6 px-4">
        <div class="container mx-auto max-w-4xl flex flex-col md:flex-row justify-between items-center">
            <p class="mb-4 md:mb-0">© 2025 RecycleHub - Giving items a second life</p>
            <div class="flex space-x-4">
                <a href="#" class="text-gray-300 hover:text-green-400 transition-colors duration-300">
                    <i class="fab fa-facebook"></i>
                </a>
                <a href="#" class="text-gray-300 hover:text-green-400 transition-colors duration-300">
                    <i class="fab fa-twitter"></i>
                </a>
                <a href="#" class="text-gray-300 hover:text-green-400 transition-colors duration-300">
                    <i class="fab fa-instagram"></i>
                </a>
            </div>
        </div>
    </footer>
    <script>
        const form = document.getElementById('itemForm');
        const inputs = form.querySelectorAll('input, select');
        const progressBar = document.getElementById('progress-bar');
        const totalFields = inputs.length;

        function updateProgress() {
            let filledFields = 0;
            inputs.forEach(input => {
                if (input.value.trim() !== '') {
                    filledFields++;
                }
            });

            const progressPercent = (filledFields / totalFields) * 100;
            progressBar.style.width = ${progressPercent}%;
        }

        inputs.forEach(input => {
            input.addEventListener('input', updateProgress);
        });
                document.addEventListener('DOMContentLoaded', function() {
            const bgElements = document.querySelectorAll('.absolute');

            bgElements.forEach(element => {
                let position = 0;
                setInterval(() => {
                    position = position > 360 ? 0 : position + 1;
                    const radius = 5;
                    const centerX = 0;
                    const centerY = 0;
                    const x = centerX + radius * Math.cos(position * Math.PI / 180);
                    const y = centerY + radius * Math.sin(position * Math.PI / 180);

                    element.style.transform = translate(${x}px, ${y}px);
                }, 50);
            });
        });
    </script>
</body>
</html>
