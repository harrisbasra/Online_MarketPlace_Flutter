import 'package:flutter/material.dart';

import 'Checker.dart';

class Review_Page032 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Checker()));
          },
        ),
        title: Center(
          child: Text(
            'Write a Review',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children :[
            Column(
          children: [
            Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                      elevation: 1,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/images/product.png',
                                width: 120,
                                height: 100,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top:8.0, bottom: 8.0),
                                    child: CircleAvatar(
                                      // User's profile picture
                                      radius: 25,
                                      // Replace with the appropriate image source
                                      backgroundImage: AssetImage('assets/images/user.png'),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'by Harrey Be',
                                  ),
                                ],
                              ),
                              Text(
                                'iPhone 12 Pro',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(height: 10),
                              Row(
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
                                    Icons.star_border,
                                    color: Color.fromRGBO(219, 185, 88, 1),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    '(180)',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Text(
                                  '\$879',
                                  style: TextStyle(
                                    color: Color.fromRGBO(219, 185, 88, 1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Rating',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Handle star rating
                          },
                          child: Icon(
                            Icons.star_border,
                            color: Colors.grey,
                            size: 30,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Handle star rating
                          },
                          child: Icon(
                            Icons.star_border,
                            color: Colors.grey,
                            size: 30,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Handle star rating
                          },
                          child: Icon(
                            Icons.star_border,
                            color: Colors.grey,
                            size: 30,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Handle star rating
                          },
                          child: Icon(
                            Icons.star_border,
                            color: Colors.grey,
                            size: 30,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Handle star rating
                          },
                          child: Icon(
                            Icons.star_border,
                            color: Colors.grey,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Write your Review',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          maxLines: null,
                          decoration: InputDecoration(
                            hintText: 'Would you like to write anything about this product?',
                            counterText: '0 characters', // Replace with character count logic
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Remaining Characters',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),

                  ],
                ),
              ],
            ),
          ],
        ),
            Expanded(child: SizedBox(height: 20)),
            Container(
              width: double.infinity, // Take up all available horizontal space
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(219, 185, 88, 1), // Set RGB color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // Set desired border radius for rectangle shape
                  ),
                ),
                onPressed: () {
                  // Handle button press
                },
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    'Save Review',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ]

        )
      ),
    );
  }
}