import 'package:flutter/material.dart';

class ClothingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clothing'),
      ),
      body: Container(
        color: Colors.grey[200],
        padding: EdgeInsets.all(16),
        child: GridView.count(
          crossAxisCount: 2,
          children: List.generate(
            4, // Assuming there are 4 clothing items for demonstration
            (index) => ClothingItem(
              productName: index == 0
                  ? 'T-Shirt'
                  : index == 1
                      ? 'Jeans'
                      : index == 2
                          ? 'Dress'
                          : 'Jacket',
              productImage: 'assets/clothing${index + 1}.jpg', // Update image names
              productRating: 4.5, // Rating can be dynamic
            ),
          ),
        ),
      ),
    );
  }
}

class ClothingItem extends StatelessWidget {
  final String productName;
  final String productImage;
  final double productRating;

  const ClothingItem({
    Key? key,
    required this.productName,
    required this.productImage,
    required this.productRating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle tap on clothing item
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
                // Handle adding to cart
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
              ),
              child: Text('Add to Cart'),
            ),
          ],
        ),
      ),
    );
  }
}
