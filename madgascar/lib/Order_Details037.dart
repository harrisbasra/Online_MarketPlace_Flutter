import 'package:flutter/material.dart';

import 'Checker.dart';

class DashedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Color.fromRGBO(0, 0, 0, 0.3)
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final dashWidth = 5;
    final dashSpace = 5;
    double startY = 0;
    while (startY < size.height) {
      canvas.drawLine(
        Offset(0, startY),
        Offset(0, startY + dashWidth),
        paint,
      );
      startY += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(DashedLinePainter oldDelegate) => false;
}
class Order_Details037 extends StatelessWidget{
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
            'Order Details',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
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
                      ],
                    ),
                    Expanded(child: SizedBox(width: 10,)),
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
                            Text(
                              '20/08/23',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.black87,
                              ),
                            ),
                            SizedBox(height: 50,),
                            Text(
                              'In Progress',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(219, 185, 88, 1)
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 1,
                      color: Color.fromRGBO(0, 0, 0, 0.3),
                      child: CustomPaint(
                        painter: DashedLinePainter(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Text(
                    'Order Date: ',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(219, 185, 88, 1),
                      fontSize: 20
                    ),
                  ),
                  Spacer(),
                  Text(
                    '19/02/2022',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontSize: 18
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Divider(
                color: Color.fromRGBO(0, 0, 0, 0.3),
                height: 1,
                thickness: 1,
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Text(
                    'ETA',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(219, 185, 88, 1),
                        fontSize: 20
                    ),
                  ),
                  Spacer(),
                  Text(
                    '05/03/2022',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 18
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Divider(
                color: Color.fromRGBO(0, 0, 0, 0.3),
                height: 1,
                thickness: 1,
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Text(
                    'Status',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(219, 185, 88, 1),
                        fontSize: 20
                    ),
                  ),
                  Spacer(),
                  Text(
                    'in progress',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 18
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Divider(
                color: Color.fromRGBO(0, 0, 0, 0.3),
                height: 1,
                thickness: 1,
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Text(
                    'Vendor',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(219, 185, 88, 1),
                        fontSize: 20
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Megan Barnett',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 18
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Divider(
                color: Color.fromRGBO(0, 0, 0, 0.3),
                height: 1,
                thickness: 1,
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Text(
                    'Delivery Address',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(219, 185, 88, 1),
                        fontSize: 20
                    ),
                  ),
                  Spacer(),
                  Flexible(
                    child: Text(
                      '4536 Kelley Road, Gulfport, Congo',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          fontSize: 18
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Divider(
                color: Color.fromRGBO(0, 0, 0, 0.3),
                height: 1,
                thickness: 1,
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

}