import 'package:flutter/material.dart';

import 'Checker.dart';

class LiveStreamerCard extends StatelessWidget {
  final String profilePicture;
  final String backgroundPhoto;
  final int liveCount;
  final int totalOrders;
  final double price;

  LiveStreamerCard({
    required this.profilePicture,
    required this.backgroundPhoto,
    required this.liveCount,
    required this.totalOrders,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(backgroundPhoto),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 10,
            left: 10,
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(profilePicture),
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                '$liveCount Live',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                '$totalOrders Orders',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: ElevatedButton(
              onPressed: () {
                // Navigate to item page
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(219, 185, 88, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Row(
                children: [
                  Text(
                    '\$$price',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class livestreamer010 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Checker()));
          },
        ),
        title: Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),

            ),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search',
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Handle notifications button press
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle active button press
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(219, 185, 88, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    fixedSize: Size(100, 60),
                  ),
                  child: Text('Active'),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.pink[300]!,
                        Colors.pink[100]!,
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 100,
                  height: 60,
                  child: TextButton(
                    onPressed: () {
                      // Handle go live button press
                    },
                    child: Text(
                      'Go Live',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 100,
                  height: 60,
                  child: TextButton(
                    onPressed: () {
                      // Handle my sellers button press
                    },
                    child: Text('My Sellers'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            LiveStreamerCard(
              profilePicture: 'assets/images/user.png',
              backgroundPhoto: 'assets/images/streamer1.png',
              liveCount: 150,
              totalOrders: 1200,
              price: 99.99,
            ),
            LiveStreamerCard(
              profilePicture: 'assets/images/user.png',
              backgroundPhoto: 'assets/images/streamer2.png',
              liveCount: 80,
              totalOrders: 900,
              price: 49.99,
            ),
            LiveStreamerCard(
              profilePicture: 'assets/images/user.png',
              backgroundPhoto: 'assets/images/streamer3.png',
              liveCount: 200,
              totalOrders: 1500,
              price: 149.99,
            ),
            LiveStreamerCard(
              profilePicture: 'assets/images/user.png',
              backgroundPhoto: 'assets/images/streamer3.png',
              liveCount: 200,
              totalOrders: 1500,
              price: 149.99,
            ),
            LiveStreamerCard(
              profilePicture: 'assets/images/user.png',
              backgroundPhoto: 'assets/images/streamer3.png',
              liveCount: 200,
              totalOrders: 1500,
              price: 149.99,
            ),
            LiveStreamerCard(
              profilePicture: 'assets/images/user.png',
              backgroundPhoto: 'assets/images/streamer3.png',
              liveCount: 200,
              totalOrders: 1500,
              price: 149.99,
            ),
          ],
        ),
      ),
    );
  }
}