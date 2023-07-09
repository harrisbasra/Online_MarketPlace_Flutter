import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Checker.dart';

class my_order036 extends StatelessWidget{
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
      title: Center(
        child: Text(
          'My Order',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
      ),
      ),
      body:
      Column(
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
                          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
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
                    Text("---------------------------------------------"),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Processing Date',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w800,

                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  'In Progress',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(219, 185, 88, 1)
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Text(
                                '20/08/23',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black87,
                                ),
                              ),
                              ],
                            )

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(child: SizedBox(width: 10,)),
              ],
            ),
          ),
          SizedBox(height: 10,),
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
                          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
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
                    Text("---------------------------------------------"),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Processing Date',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w800,

                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  'In Progress',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(219, 185, 88, 1)
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Text(
                                  '20/08/23',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black87,
                                  ),
                                ),
                              ],
                            )

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(child: SizedBox(width: 10,)),
              ],
            ),
          ),
          SizedBox(height: 10,),
        ],
      ),
    );
  }

}