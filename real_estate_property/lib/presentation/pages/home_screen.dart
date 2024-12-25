import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: DropdownButton<String>(
          value: 'Jakarta',
          icon: Icon(Icons.arrow_drop_down),
          underline: Container(),
          items: ['Jakarta', 'Surabaya', 'Bandung']
              .map((location) => DropdownMenuItem(
            value: location,
            child: Text(location),
          ))
              .toList(),
          onChanged: (value) {},
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search address, or near you',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                _buildCategoryButton('House', true),
                SizedBox(width: 8),
                _buildCategoryButton('Apartment', false),
                SizedBox(width: 8),
                _buildCategoryButton('Hotel', false),
                SizedBox(width: 8),
                _buildCategoryButton('Villa', false),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Near from you',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildHouseCard('Dreamszzzzzzzzville House', 'Jl Sultan Iskandar Muda', 'assets/dreamsville.jpg', '1.8 km'),
                  _buildHouseCard('Ascot House', 'Jl Cilandak Tengah', 'assets/ascot.jpg', '2.1 km'),
                ],
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Best for you',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            _buildListTile('Orchid House', 'Rp 2.500.000.000 / Year', 'assets/orchid.jpg', '6 Bedroom'),
            _buildListTile('The Hollies House', 'Rp 2.000.000.000 / Year', 'assets/hollies.jpg', '5 Bedroom'),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryButton(String title, bool isSelected) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: isSelected ? Colors.blue : Colors.grey[200],
        foregroundColor: isSelected ? Colors.white : Colors.black,
        shape: StadiumBorder(),
      ),
      onPressed: () {},
      child: Text(title),
    );
  }

  Widget _buildHouseCard(String title, String subtitle, String imageUrl, String distance) {
    return Container(
      width: 200,
      margin: EdgeInsets.only(right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  imageUrl,
                  height: 120,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                right: 8,
                top: 8,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    distance,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Text(subtitle, style: TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }

  Widget _buildListTile(String title, String price, String imageUrl, String bedrooms) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(
          imageUrl,
          width: 80,
          height: 80,
          fit: BoxFit.cover,
        ),
      ),
      title: Text(title),
      subtitle: Text('$price\n$bedrooms'),
      isThreeLine: true,
    );
  }
}
