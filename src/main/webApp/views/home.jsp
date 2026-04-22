<%@page language="java" %>



<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>RecycleHub - Give Products a Second Life</title>
  <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;500;600;700&display=swap" rel="stylesheet" />
  <script src="https://cdn.tailwindcss.com"></script>
  <script src="https://unpkg.com/alpinejs" defer></script>
  <style>
    body {
      font-family: 'Outfit', sans-serif;
    }
    .hero-pattern {
      background-image: url("data:image/svg+xml,%3Csvg width='100' height='100' viewBox='0 0 100 100' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M11 18c3.866 0 7-3.134 7-7s-3.134-7-7-7-7 3.134-7 7 3.134 7 7 7zm48 25c3.866 0 7-3.134 7-7s-3.134-7-7-7-7 3.134-7 7 3.134 7 7 7z...' fill='%2320B2AA' fill-opacity='0.1' fill-rule='evenodd'/%3E%3C/svg%3E");
    }
  </style>
</head>
<body class="bg-gray-50 text-gray-800 antialiased">

  <header class="relative bg-gradient-to-br from-emerald-500 via-teal-500 to-cyan-600 text-white overflow-hidden">
    <div class="absolute inset-0 hero-pattern opacity-20"></div>
    <div class="relative container mx-auto px-4 py-20 text-center">
      <h1 class="text-5xl font-bold mb-4 drop-shadow">RecycleHub</h1>
      <p class="text-xl md:text-2xl mb-8">Bridging the gap between donors and recyclers for a sustainable future.</p>
      <div class="flex justify-center gap-4 flex-wrap">
        <a href="home" class="px-6 py-3 bg-white text-teal-600 font-medium rounded-full shadow hover:shadow-lg transition">Home</a>
        <a href="https://www.linkedin.com/in/akash-sutradhar-b6a305287?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3BmsBgEzVqTOuhGlzlUk%2Bg0w%3D%3D" class="px-6 py-3 bg-white text-teal-600 font-medium rounded-full shadow hover:shadow-lg transition">Contact Us</a>
      </div>
    </div>
    <div class="absolute bottom-0 w-full">
      <svg viewBox="0 0 1440 100" fill="#fff" preserveAspectRatio="none" class="w-full h-auto">
        <path d="M0,32L60,37.3C120,43,240,53,360,64C480,75,600,85,720,80C840,75,960,53,1080,48C1200,43,1320,53,1380,58.7L1440,64L1440,100H0Z"></path>
      </svg>
    </div>
  </header>


  <section class="py-16 px-4">
    <div class="container mx-auto max-w-4xl text-center">
      <h2 class="text-4xl font-bold text-teal-700 mb-6">Why RecycleHub?</h2>
      <div class="bg-white p-10 rounded-2xl shadow">
        <p class="text-lg text-gray-700 leading-relaxed">
          Every day, reusable products like clothes, electronics, furniture, and books end up in landfills. RecycleHub connects donors with organizations that repurpose these items, reducing waste and supporting a greener future.
        </p>
      </div>
    </div>
  </section>


  <section class="py-16 bg-gray-100 px-4">
    <div class="container mx-auto max-w-6xl text-center">
      <h2 class="text-4xl font-bold text-teal-700 mb-10">Join the Movement</h2>
      <div class="flex flex-wrap justify-center gap-6">
        <button onclick="location.href='addItem'" class="px-8 py-5 bg-amber-600 text-white rounded-xl shadow hover:shadow-xl transition transform hover:-translate-y-1">Donate Items</button>
        <button onclick="location.href='allItem'" class="px-8 py-5 bg-teal-600 text-white rounded-xl shadow hover:shadow-xl transition transform hover:-translate-y-1">All Items Listed</button>
        <button onclick="location.href='details'" class="px-8 py-5 bg-cyan-600 text-white rounded-xl shadow hover:shadow-xl transition transform hover:-translate-y-1">Find Recyclers</button>
      </div>
    </div>
  </section>

  <section class="py-16 px-4">
    <div class="container mx-auto max-w-6xl text-center">
      <h2 class="text-4xl font-bold text-teal-700 mb-10">How It Works</h2>
      <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
        <div class="bg-white p-8 rounded-2xl shadow group hover:shadow-lg transition">
          <div class="text-emerald-600 font-bold text-xl mb-4">1</div>
          <h3 class="text-xl font-bold mb-2">List Your Items</h3>
          <p class="text-gray-600">Upload details of items you want to donate.</p>
        </div>
        <div class="bg-white p-8 rounded-2xl shadow group hover:shadow-lg transition">
          <div class="text-teal-600 font-bold text-xl mb-4">2</div>
          <h3 class="text-xl font-bold mb-2">Connect with Organizations</h3>
          <p class="text-gray-600">NGOs, businesses, and recyclers can browse and claim items.</p>
        </div>
        <div class="bg-white p-8 rounded-2xl shadow group hover:shadow-lg transition">
          <div class="text-cyan-600 font-bold text-xl mb-4">3</div>
          <h3 class="text-xl font-bold mb-2">Make a Difference</h3>
          <p class="text-gray-600">Your donations help reduce waste and promote sustainability.</p>
        </div>
      </div>
    </div>
  </section>

  <section class="py-16 px-4 bg-gray-50">
    <div class="container mx-auto max-w-6xl text-center">
      <h2 class="text-4xl font-bold text-teal-700 mb-10">Our Impact</h2>
      <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-8">
        <div class="bg-white p-6 rounded-xl shadow text-center hover:scale-105 transition">
          <div class="text-emerald-600 mb-2 text-3xl font-bold">100+</div>
          <p class="text-gray-600">Items Donated</p>
        </div>
        <div class="bg-white p-6 rounded-xl shadow text-center hover:scale-105 transition">
          <div class="text-teal-600 mb-2 text-3xl font-bold">10+</div>
          <p class="text-gray-600">Partner Organizations</p>
        </div>
        <div class="bg-white p-6 rounded-xl shadow text-center hover:scale-105 transition">
          <div class="text-cyan-600 mb-2 text-3xl font-bold">2+</div>
          <p class="text-gray-600">Cities Covered</p>
        </div>
        <div class="bg-white p-6 rounded-xl shadow text-center hover:scale-105 transition">
          <div class="text-amber-600 mb-2 text-3xl font-bold">&#8734;</div>
          <p class="text-gray-600">Impact Potential</p>
        </div>
      </div>
    </div>
  </section>

  <footer class="bg-gradient-to-br from-teal-600 to-emerald-700 text-white py-10 mt-12">
    <div class="container mx-auto px-6">
      <div class="flex flex-col md:flex-row justify-between items-center md:items-start gap-10">
        <div class="text-center md:text-left">
          <h2 class="text-2xl font-semibold mb-2">RecycleHub</h2>
          <p class="text-sm opacity-80 max-w-xs">
            Empowering communities to give their unused items a second life while promoting sustainability.
          </p>
        </div>

        <div class="flex flex-col sm:flex-row gap-8 text-center md:text-left">
          <div>
            <h3 class="font-semibold mb-2">Quick Links</h3>
            <ul class="space-y-1 text-sm">
              <li><a href="home" class="hover:underline">Home</a></li>
              <li><a href="addItem" class="hover:underline">Donate Items</a></li>
              <li><a href="allItem" class="hover:underline">All Items</a></li>
              <li><a href="details" class="hover:underline">Find Recyclers</a></li>
            </ul>
          </div>
          <div>
            <h3 class="font-semibold mb-2">Contact</h3>
            <ul class="space-y-1 text-sm">
              <li><a href="mailto:support@recyclehub.org" class="hover:underline">support@recyclehub.org</a></li>
              <li><a href="https://www.linkedin.com/in/akash-sutradhar-b6a305287" target="_blank" class="hover:underline">LinkedIn</a></li>
            </ul>
          </div>
        </div>
      </div>
      <div class="border-t border-white border-opacity-20 mt-10 pt-4 text-sm text-center opacity-75">
        © 2025 RecycleHub. All rights reserved.
      </div>
    </div>
  </footer>

</body>
</html>