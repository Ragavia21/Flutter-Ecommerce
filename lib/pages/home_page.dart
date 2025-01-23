import 'package:flutter/material.dart';
import 'product_listing_page.dart'; // Adjust the import path accordingly

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> productImages = [
    'assets/product1.jpg',
    'assets/product2.jpg',
    'assets/product3.jpg',
  ];
  PageController _pageController = PageController();
  double _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page ?? 0; // Use null-aware operator
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home', style: TextStyle(fontFamily: 'Pacifico')),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Implement search functionality
            },
          ),
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              // Navigate to home
            },
          ),
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              // Open menu
            },
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // Navigate to profile
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFcc00cc), // cc00cc
                const Color.fromARGB(0, 255, 251, 251),
                Colors.transparent,
                Color(0xFFcc00cc), // cc00cc
                Color(0xFFcc00cc), // cc00cc
              ],
              stops: [0, 0.25, 0.75, 0.75, 1],
            ),
          ),
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Welcome to Our Shop',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Pacifico',
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'From the bustling bazaars of Mumbai to the serene backwaters of Kerala, our curated collection brings you the best of India, right at your fingertips. Indulge in the rich flavors of authentic spices, adorn yourself in the finest traditional attire, and adorn your home with the exquisite beauty of Indian artistry. With seamless navigation, secure transactions, and swift delivery, we\'re here to make your shopping experience as delightful as the festivals that grace our land.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontFamily: 'Roboto',
                ),
              ),
              SizedBox(height: 20.0),
              SizedBox(
                height: 200.0,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: productImages.length,
                  itemBuilder: (BuildContext context, int index) {
                    double scale = 1.0;
                    if (_currentPage.floor() == index) {
                      scale = 1.0 - (_currentPage - index);
                    } else if (_currentPage.ceil() == index) {
                      scale = 1.0 - (index - _currentPage);
                    }
                    return Center(
                      child: AnimatedBuilder(
                        animation: _pageController,
                        builder: (BuildContext context, Widget? child) { // Change Widget to Widget?
                          return Transform.scale(
                            scale: scale,
                            child: child!,
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                              image: AssetImage(productImages[index]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.local_shipping,
                    size: 50.0,
                    color: const Color.fromARGB(255, 5, 5, 5),
                  ),
                  Icon(
                    Icons.shopping_cart,
                    size: 50.0,
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                  Icon(
                    Icons.payment,
                    size: 50.0,
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                ],
              ),
              SizedBox(height: 40.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProductListingPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                  textStyle: TextStyle(fontSize: 20.0),
                ),
                child: Text('Go to Product Listing'),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  // Navigate to home
                },
              ),
              IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  // Navigate to shopping cart
                },
              ),
              IconButton(
                icon: Icon(Icons.favorite),
                onPressed: () {
                  // Navigate to favorites
                },
              ),
              IconButton(
                icon: Icon(Icons.person),
                onPressed: () {
                  // Navigate to profile
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
