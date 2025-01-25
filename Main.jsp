<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="en">

<head>

 <meta charset="UTF-8">

 <meta name="viewport" content="width=device-width, initial-scale=1.0">

 <title>Tourist Places in India</title>

 <style>

 * {

 margin: 0;

 padding: 0;

 box-sizing: border-box;

 }



 html, body {

 height: 100%;

 font-family: Arial, sans-serif;

 }



 .welcome-page {

 height: 100vh;

 display: flex;

 justify-content: center;

 align-items: center;

 flex-direction: column;

 text-align: center;

 background-color: #f4f4f9;

 color: #333;

 }



 .welcome-page h1 {

 font-size: 3em;

 margin-bottom: 20px;

 }



 .welcome-page p {

 font-size: 1.2em;

 margin-bottom: 40px;

 }



 .welcome-page button {

 padding: 10px 20px;

 font-size: 1.2em;

 cursor: pointer;

 background-color: #4CAF50;

 color: white;

 border: none;

 border-radius: 5px;

 transition: background-color 0.3s;

 }



 .welcome-page button:hover {

 background-color: #45a049;

 }



 .states-container {

 display: flex;

 flex-wrap: wrap;

 justify-content: space-around;

 gap: 20px;

 margin-top: 30px;

 display: none;

 }



 .state {

 position: relative;

 width: 25%;

 height: 220px;

 background-size: cover;

 background-repeat: no-repeat;

 background-position: center;

 color: white;

 border-radius: 10px;

 overflow: hidden;

 box-shadow: 0 4px 6px rgba(0, 0, 0, 0.5);

 cursor: pointer;

 }



 .state .state-info {

 position: absolute;

 bottom: 20px;

 left: 20px;

 right: 20px;

 background-color: rgba(0, 0, 0, 0.7);

 padding: 10px;

 border-radius: 8px;

 }

 .state-info .state-link {

 color: #ffffff; /* Default link color */

 font-weight: bold; /* Optional: make the link bold */

 /* Smooth color transition */

}



.state-info .state-link:hover {

 color: #FFD700; /* Change to gold on hover */

}

 



 .state .state-info h2 {

 font-size: 1.3em;

 margin-bottom: 8px;

 }



 .state .state-info p {

 font-size: 1em;

 }



 @media (max-width: 768px) {

 .state {

 width: 45%;

 }

 }



 @media (max-width: 480px) {

 .state {

 width: 100%;

 }

 }



 .tourist-places {

 margin-top: 20px;

 padding: 20px;

 background-color: #f9f9f9;

 border-radius: 8px;

 }



 .tourist-place {

 margin-bottom: 15px;

 }



 .tourist-place h3 {

 font-size: 1.5em;

 color: #4CAF50;

 cursor: pointer;

 }



 .tourist-place p {

 font-size: 1.1em;

 }



 /* Additional styles for detailed description */

 #placeDetail {

 margin-top: 20px;

 padding: 20px;

 background-color: #e3f2fd;

 border-radius: 8px;

 display: none;

 }

 </style>

</head>

<body>

 <div class="welcome-page" id="welcomePage">

 <h1>Welcome to Incredible India!</h1>

 <p>Explore the beauty and culture of India's top tourist destinations.</p>

 <button onclick="showPlaces()">Next</button>

 </div>



 <div class="states-container" id="statesContainer">

 <!-- Existing state cards, add others similarly -->

 <div class="state" style="background-image: url('https://png.pngtree.com/thumb_back/fh260/background/20240522/pngtree-a-big-yellow-palace-in-rajasthan-image_15668363.jpg');" onclick="showTouristPlaces('Rajasthan')">

 <div class="state-info">

 <h2>Rajasthan</h2>

 <p>Known for its palaces, forts, and vibrant culture. Rajasthan is a land of kings.</p>

 <a href="Rajisthan.jsp?state=Rajasthan" class="state-link">

 Explore Rajasthan</a>

 </div>

 </div>

 <div class="state" style="background-image: url('https://www.bestbus.in/assets/images/news-cms/Kerala_Tourism.jpg');" onclick="showTouristPlaces('Kerala')">

 <div class="state-info">

 <h2>Kerala</h2>

 <p>Famous for its backwaters, beaches, and the serene beauty of nature.</p>

 <a href="Kerala.jsp?state=Kerala" class="state-link">Explore Kerala</a>

 </div>

 </div>

 <div class="state" style="background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQas-TUhwmAaFooCDDrPspPIAmFyjT5QTEUvg&s');" onclick="showTouristPlaces('Uttar Pradesh')">

 <div class="state-info">

 <h2>Uttar Pradesh</h2>

 <p>Home to the Taj Mahal, one of the seven wonders of the world.</p>

 <a href="Uttar Pradesh.jsp?state=UttarPradesh" class="state-link">Explore Uttar Pradesh</a>

 </div>

 </div>

 <div class="state" style="background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRa000f5mY9OPDy9rwEjlbCebImBdq38dVoiQ&s');" onclick="showTouristPlaces('Goa')">

 <div class="state-info">

 <h2>Goa</h2>

 <p>Renowned for its beaches, vibrant nightlife, and Portuguese heritage.</p>

 <a href="Goa.jsp?state=Goa" class="state-link">Explore Goa</a>

 </div>

 </div>

 <!-- Add Tamil Nadu, Maharashtra, and Karnataka -->

 <div class="state" style="background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpOyQosXxZyT5E-S8FI4n-IUU3fJFu1M_MQw&s.jpg');" onclick="showTouristPlaces('Tamil Nadu')">

 <div class="state-info">

 <h2>TamilNadu</h2>

 <p>Famous for its rich temple culture and beautiful beaches.</p>

 <a href="TamilNadu.jsp?state=TamilNadu" class="state-link">Explore TamilNadu</a>

 </div>

 </div>

 <div class="state" style="background-image: url('https://maharashtratourism.gov.in/wp-content/uploads/2023/10/mumbai.jpg');" onclick="showTouristPlaces('Maharashtra')">

 <div class="state-info">

 <h2>Maharashtra</h2>

 <p>Known for its cosmopolitan cities, beaches, and the iconic Gateway of India.</p>

 <a href="Maharastra.jsp?state=Maharastra" class="state-link">Explore Maharashtra</a>

 </div>

 </div>

 <div class="state" style="background-image: url('https://karnatakatourism.org/wp-content/uploads/2020/06/Districts-1.jpg');" onclick="showTouristPlaces('Karnataka')">

 <div class="state-info">

 <h2>Karnataka</h2>

 <p>Renowned for its ancient temples, palaces, and rich cultural heritage.</p>

 <a href="Karnataka.jsp?state=Karnataka" class="state-link">

 <h3>Explore Karnataka</h3></a>

 </div>

 </div>

 </div>



 <div id="touristPlacesList" class="tourist-places" style="display:none;">

 <h2>Famous Tourist Places</h2>

 <div id="placesContent"></div>

 </div>



 <div id="placeDetail">

 <h2 id="placeDetailTitle"></h2>

 <p id="placeDetailDescription"></p>

 </div>



 <script>

 function showPlaces() {

 document.getElementById("welcomePage").style.display = "none";

 document.getElementById("statesContainer").style.display = "flex";

 }



 function showTouristPlaces(state) {

 var placesContent = document.getElementById("placesContent");

 placesContent.innerHTML = '';

 document.getElementById("touristPlacesList").style.display = "block";

 document.getElementById("placeDetail").style.display = "none";



 var touristPlaces = [];



 if (state === 'Rajasthan') {

 touristPlaces = [

 { name: 'Amber Fort', description: 'A majestic fort with stunning architecture and scenic views.', details: 'Amber Fort is a blend of Hindu and Mughal architecture with beautiful views of Maota Lake.' },

 { name: 'Udaipur', description: 'Known as the "City of Lakes" with beautiful palaces and lakes.', details: 'Udaipur offers scenic lakes, historic palaces, and rich cultural experiences.' }

 ];

 } else if (state === 'Kerala') {

 touristPlaces = [

 { name: 'Alleppey Backwaters', description: 'Famous for its serene backwaters and houseboat cruises.', details: 'Enjoy a relaxing houseboat ride through the picturesque backwaters of Kerala.' },

 { name: 'Munnar', description: 'A hill station known for its tea plantations and scenic views.', details: 'Munnar offers cool weather, lush tea gardens, and scenic trekking routes.' }

 ];

 } else if (state === 'Uttar Pradesh') {

 touristPlaces = [

 { name: 'Taj Mahal', description: 'The world-famous monument to love and a UNESCO World Heritage site.', details: 'The Taj Mahal is an iconic symbol of India’s history and one of the seven wonders of the world.' },

 { name: 'Varanasi', description: 'The spiritual capital of India known for its ghats and temples.', details: 'Varanasi offers a spiritual journey along the Ganges River with its ghats and ancient temples.' }

 ];

 } else if (state === 'Goa') {

 touristPlaces = [

 { name: 'Baga Beach', description: 'A popular beach with water sports and vibrant nightlife.', details: 'Baga Beach is known for its lively atmosphere, beach parties, and water sports.' },

 { name: 'Fort Aguada', description: 'A historic Portuguese fort with stunning views of the Arabian Sea.', details: 'Fort Aguada offers panoramic views and is a reminder of Goa’s Portuguese colonial history.' }

 ];

 } else if (state === 'Tamil Nadu') {

 touristPlaces = [

 { name: 'Meenakshi Temple', description: 'A historic temple dedicated to Goddess Meenakshi, known for its stunning architecture.', details: 'Meenakshi Temple in Madurai is known for its grand towers, intricate carvings, and vibrant religious ceremonies.' },

 { name: 'Marina Beach', description: 'A long stretch of golden sand in Chennai, perfect for a relaxing day by the sea.', details: 'Marina Beach is one of the longest urban beaches in the world, ideal for a peaceful walk or evening outings.' }

 ];

 } else if (state === 'Maharashtra') {

 touristPlaces = [

 { name: 'Gateway of India', description: 'A historical monument and the most iconic landmark of Mumbai.', details: 'Built in 1924, the Gateway of India overlooks the Arabian Sea and is a symbol of India’s freedom.' },

 { name: 'Ajanta and Ellora Caves', description: 'Ancient rock-cut cave complexes with stunning murals and sculptures.', details: 'The Ajanta and Ellora Caves in Maharashtra are famous for their Buddhist, Hindu, and Jain temples and their intricate paintings and carvings.' }

 ];

 } else if (state === 'Karnataka') {

 touristPlaces = [

 { name: 'Chitradurga Fort', description: 'A massive fort with historical significance and scenic views.', details: 'Chitradurga Fort is a sprawling fortress, offering a glimpse into Karnataka’s medieval history.' },

 { name: 'Coorg', description: 'A hill station known for its coffee plantations and picturesque scenery.', details: 'Coorg offers scenic views, coffee estates, and a calm environment for a relaxing getaway.' }

 ];

 }



 touristPlaces.forEach(function(place) {

 var placeDiv = document.createElement("div");

 placeDiv.classList.add("tourist-place");



 var placeName = document.createElement("h3");

 placeName.textContent = place.name;

 placeName.onclick = function() { showPlaceDetails(place); };



 var placeDescription = document.createElement("p");

 placeDescription.textContent = place.description;



 placeDiv.appendChild(placeName);

 placeDiv.appendChild(placeDescription);

 placesContent.appendChild(placeDiv);

 });

 }



 function showPlaceDetails(place) {

 document.getElementById("placeDetailTitle").textContent = place.name;

 document.getElementById("placeDetailDescription").textContent = place.details;

 document.getElementById("placeDetail").style.display = "block";

 }

 </script>

</body>

</html>
