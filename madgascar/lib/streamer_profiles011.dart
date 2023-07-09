import 'package:flutter/material.dart';
import 'package:madgascar/Checker.dart';

class LiveStreamerProfileCard extends StatelessWidget {
  final String profilePicture;
  final String streamerName;
  final String streamerDescription;
  final int totalProducts;

  LiveStreamerProfileCard({
    required this.profilePicture,
    required this.streamerName,
    required this.streamerDescription,
    required this.totalProducts,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black12,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(profilePicture),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  streamerName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  streamerDescription,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  '$totalProducts Products',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Color.fromRGBO(219, 185, 88, 1),
                ),
                color: Color.fromRGBO(219, 185, 88, 1),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                onPressed: () {
                  // Handle follow button press
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class streamer_profiles011 extends StatelessWidget {
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
        title: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search',
                  ),
                ),
              ),
            ),
          ],
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
            LiveStreamerProfileCard(
              profilePicture: 'assets/images/user.png',
              streamerName: 'Streamer 1',
              streamerDescription: 'Lorem ipsum dolor sit amet',
              totalProducts: 100,
            ),
            LiveStreamerProfileCard(
              profilePicture: 'assets/images/user.png',
              streamerName: 'Streamer 2',
              streamerDescription: 'Consectetur adipiscing elit',
              totalProducts: 200,
            ),
            LiveStreamerProfileCard(
              profilePicture: 'assets/images/user.png',
              streamerName: 'Streamer 3',
              streamerDescription: 'Sed do eiusmod tempor incididunt',
              totalProducts: 150,
            ),
            LiveStreamerProfileCard(
              profilePicture: 'assets/images/user.png',
              streamerName: 'Streamer 4',
              streamerDescription: 'Ut labore et dolore magna aliqua',
              totalProducts: 250,
            ),
            LiveStreamerProfileCard(
              profilePicture: 'assets/images/user.png',
              streamerName: 'Streamer 5',
              streamerDescription: 'Duis aute irure dolor in reprehenderit',
              totalProducts: 180,
            ),
            LiveStreamerProfileCard(
              profilePicture: 'assets/images/user.png',
              streamerName: 'Streamer 6',
              streamerDescription: 'Excepteur sint occaecat cupidatat non proident',
              totalProducts: 300,
            ),
          ],
        ),
      ),
    );
  }
}
