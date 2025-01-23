import 'package:flutter/material.dart';
import 'electronics_page.dart';
import 'clothing_page.dart';
import 'books_page.dart';
import 'furniture_page.dart';
import 'toys_page.dart';
import 'beauty_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Listing App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductListingPage(),
    );
  }
}

class ProductListingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Listing'),
      ),
      body: CategoryGrid(),
    );
  }
}

class CategoryGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(categories.length, (index) {
        return GestureDetector(
          onTap: () {
            // Navigate to the respective category page when tapped
            switch (index) {
              case 0:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ElectronicsPage()),
                );
                break;
              case 1:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ClothingPage()),
                );
                break;
              case 2:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BooksPage()),
                );
                break;
              case 3:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FurniturePage()),
                );
                break;
              case 4:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ToysPage()),
                );
                break;
              case 5:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BeautyPage()),
                );
                break;
            }
          },
          child: CategoryBox(
            category: categories[index],
            icon: icons[index],
          ),
        );
      }),
    );
  }
}

class CategoryBox extends StatelessWidget {
  final String category;
  final IconData icon;

  const CategoryBox({Key? key, required this.category, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      color: Color.fromARGB(255, 245, 123, 235),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 40,
            color: Colors.white,
          ),
          SizedBox(height: 10),
          Text(
            category,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

// Sample list of categories and icons
List<String> categories = [
  'Electronics',
  'Clothing',
  'Books',
  'Furniture',
  'Toys',
  'Beauty',
];

List<IconData> icons = [
  Icons.phone_android,
  Icons.shopping_bag,
  Icons.book,
  Icons.weekend,
  Icons.toys,
  Icons.face,
];
