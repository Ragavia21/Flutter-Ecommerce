import 'package:flutter/material.dart';
import 'ordernowpage.dart'; // Import the OrderNowPage

class ElectronicsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Electronics'),
      ),
      body: Container(
        color: Colors.grey[200],
        padding: EdgeInsets.all(16),
        child: GridView.count(
          crossAxisCount: 2,
          children: List.generate(
            4, // Assuming there are 4 products for demonstration
            (index) => ProductItem(
              productName: index == 0
                  ? 'Headphone'
                  : index == 1
                      ? 'Radio'
                      : index == 2
                          ? 'Tablet'
                          : 'Mobile',
              productImage: 'assets/electronic${index + 1}.jpg', // Updated image names
              productRating: 4.5, // Rating can be dynamic
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60,
          color: Colors.blue,
          child: Center(
            child: Text(
              '©2024 Your Company',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final String productName;
  final String productImage;
  final double productRating;

  const ProductItem({
    Key? key,
    required this.productName,
    required this.productImage,
    required this.productRating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AddToCartPage(
              productName: productName,
              productImage: productImage,
              productRating: productRating,
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Image.asset(
                productImage,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            Text(
              productName,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 16,
                ),
                SizedBox(width: 5),
                Text(
                  '$productRating',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddToCartPage(
                      productName: productName,
                      productImage: productImage,
                      productRating: productRating,
                    ),
                  ),
                );
              },
              child: Text('Add to Cart'),
            ),
          ],
        ),
      ),
    );
  }
}

class AddToCartPage extends StatelessWidget {
  final String productName;
  final String productImage;
  final double productRating;

  const AddToCartPage({
    Key? key,
    required this.productName,
    required this.productImage,
    required this.productRating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add to Cart'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              productName,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Image.asset(
              productImage,
              fit: BoxFit.cover,
              width: 200,
              height: 200,
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 20,
                ),
                SizedBox(width: 5),
                Text(
                  '$productRating',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderNowPage(), // Navigate to OrderNowPage
                  ),
                );
              },
              child: Text('Order Now'),
            ),
          ],
        ),
      ),
    );
  }
}
