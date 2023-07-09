import 'package:flutter/material.dart';

import 'Checker.dart';

class review_page031 extends StatelessWidget {
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
        title: Center(child: Text('Review', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),)),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Handle search button press
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                '4.7',
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            ),
              SizedBox(width: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: Color.fromRGBO(219, 185, 88, 1),
                  ),
                  Icon(
                    Icons.star,
                    color: Color.fromRGBO(219, 185, 88, 1),
                  ),
                  Icon(
                    Icons.star,
                    color: Color.fromRGBO(219, 185, 88, 1),
                  ),
                  Icon(
                    Icons.star,
                    color: Color.fromRGBO(219, 185, 88, 1),
                  ),
                  Icon(
                    Icons.star,
                    color: Color.fromRGBO(219, 185, 88, 1),
                  ),
                  SizedBox(width: 5),
                  Text(
                    '(257)',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),],),

            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Column(
                  children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Excellent',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20
                          ),
                        ),
                      ),
                      Expanded(
                        child: LinearProgressIndicator(
                          backgroundColor: Colors.grey[300],
                          valueColor: AlwaysStoppedAnimation<Color>(
                            Color.fromRGBO(219, 185, 88, 1),
                          ),
                          value: 0.8,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Good',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20
                          ),
                        ),
                      ),
                      Expanded(
                        child: LinearProgressIndicator(
                          backgroundColor: Colors.grey[300],
                          valueColor: AlwaysStoppedAnimation<Color>(
                            Color.fromRGBO(219, 185, 88, 1),
                          ),
                          value: 0.6,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Average',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20
                          ),
                        ),
                      ),
                      Expanded(
                        child: LinearProgressIndicator(
                          backgroundColor: Colors.grey[300],
                          valueColor: AlwaysStoppedAnimation<Color>(
                            Color.fromRGBO(219, 185, 88, 1),
                          ),
                          value: 0.4,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),

                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Poor',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20
                          ),
                        ),
                      ),
                      Expanded(
                        child: LinearProgressIndicator(
                          backgroundColor: Colors.grey[300],
                          valueColor: AlwaysStoppedAnimation<Color>(
                            Color.fromRGBO(219, 185, 88, 1),
                          ),
                          value: 0.2,
                        ),
                      ),
                    ],
                  ),
                ),
                ]),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(219, 185, 88, 0.5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  minimumSize: Size(100, 50),
                ),
                onPressed: () {
                  // Handle button press
                },
                child: Text(
                  'Add Review',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                  ),
                ),
              ),
            ),
            SizedBox(height:20),
            SingleChildScrollView(
              child: Column(
                children: [
                  ReviewCard(
                    profilePicture: 'assets/images/user.png',
                    name: 'Caroline Davis',
                    rating: 4.9,
                    time: 'few seconds ago',
                    review: 'Lorem ipsum elit.',
                  ),
                  ReviewCard(
                    profilePicture: 'assets/images/user.png',
                    name: 'Jane Smith',
                    rating: 3.8,
                    time: '1 day ago',
                    review: 'Nulla consequat massa quis enim.',
                  ),
                  ReviewCard(
                    profilePicture: 'assets/images/user.png',
                    name: 'Mike Johnson',
                    rating: 5.0,
                    time: '3 days ago',
                    review: 'Cras mattis consectetur purus sit amet fermentum.',
                  ),
                  ReviewCard(
                    profilePicture: 'assets/images/user.png',
                    name: 'John Doe',
                    rating: 4.5,
                    time: '2 hours ago',
                    review: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only( left: 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey.shade300,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        minimumSize: Size(100, 50),
                      ),
                      onPressed: () {
                        // Handle button press
                      },
                      child: Text(
                        'Back',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(child: SizedBox(width: 20,)),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(219, 185, 88, 0.5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        minimumSize: Size(100, 50),
                      ),
                      onPressed: () {
                        // Handle button press
                      },
                      child: Text(
                        'Add Review',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ReviewCard extends StatelessWidget {
  final String profilePicture;
  final String name;
  final double rating;
  final String time;
  final String review;

  ReviewCard({
    required this.profilePicture,
    required this.name,
    required this.rating,
    required this.time,
    required this.review,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Card(
        elevation: 1,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(profilePicture),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Color.fromRGBO(219, 185, 88, 1),
                          ),
                          SizedBox(width: 2),
                          Text(rating.toString()),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  Opacity(
                    opacity: 0.3,
                    child: Text(time),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                review,
                style: TextStyle(
                  fontSize: 15,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
