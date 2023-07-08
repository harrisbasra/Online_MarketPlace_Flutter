import 'package:flutter/material.dart';

import 'Checker.dart';

class search_bar024 extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<search_bar024> {
  bool isProductSelected = true;
  bool isSellerSelected = false;

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
        title: Container(
          height: 40,
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              SizedBox(width: 10),
              Icon(Icons.search),
              SizedBox(width: 10),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: isProductSelected
                        ? Color.fromRGBO(219, 185, 88, 1)
                        : Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      isProductSelected = true;
                      isSellerSelected = false;
                    });
                  },
                  child: Text('Product'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: isSellerSelected
                        ? Color.fromRGBO(219, 185, 88, 1)
                        : Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      isProductSelected = false;
                      isSellerSelected = true;
                    });
                  },
                  child: Text('Seller'),
                ),
              ],
            ),
          ),
          if (isProductSelected)
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
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
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
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
                ),

              ],
            ),
          if (isSellerSelected)
            Expanded(
              child: ListView.builder(
                itemCount: 5, // Replace with actual number of rows
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          // Replace with actual image source
                          backgroundImage: AssetImage('assets/images/user.png'),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Name', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                            Text('Followers', style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.7)),),
                          ],
                        ),
                        Spacer(),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              isProductSelected = false;
                              isSellerSelected = true;
                            });
                          },
                          child: Text('Profile', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                        ),

                        SizedBox(width: 10),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(219, 185, 88, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              isProductSelected = false;
                              isSellerSelected = true;
                            });
                          },
                          child: Text('Follow', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}
