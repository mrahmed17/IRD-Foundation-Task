import 'package:flutter/material.dart';

class DetailProductScreen extends StatelessWidget {
  const DetailProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.bookmark_border),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset('assets/dreamsville.jpg', width: double.infinity, height: 200, fit: BoxFit.cover),
            ),
            SizedBox(height: 16),
            Text(
              'Dreamsville House',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text('Jl Sultan Iskandar Muda, Jakarta Selatan'),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.bed),
                SizedBox(width: 4),
                Text('6 Bedroom'),
                SizedBox(width: 16),
                Icon(Icons.bathtub),
                SizedBox(width: 4),
                Text('4 Bathroom'),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Description',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              'The 3-level house has a modern design. It has a large pool and a garage that fits up to four cars.',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 16),
            Text(
              'Gallery',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 8),
            SizedBox(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildGalleryImage('assets/gallery1.jpg'),
                  _buildGalleryImage('assets/gallery2.jpg'),
                  _buildGalleryImage('assets/gallery3.jpg'),
                ],
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Price',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 8),
            Text('Rp 2.500.000.000 / Year', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              child: Text('Rent Now'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGalleryImage(String imageUrl) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(imageUrl, width: 80, height: 80, fit: BoxFit.cover),
      ),
    );
  }
}
