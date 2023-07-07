import 'package:flutter/material.dart';
import 'package:madgascar/sign_in.dart';

class success_page extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(flex: 2, child: SizedBox(height: 20)),
            Image.asset(
              'assets/images/img.png',
              width: 91,
              height: 91,
            ),
            Expanded(flex: 1, child: SizedBox(height: 20)),
            Container(
              width: 110,
              height: 110,
              decoration: BoxDecoration(
                color: Color.fromRGBO(219, 185, 88, 1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.check,
                color: Colors.white,
                size: 60,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Phone Number Verified',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Thank You!',
              style: TextStyle(
                fontSize: 30,
                color: Color.fromRGBO(219, 185, 88, 1),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(219, 185, 88, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  minimumSize: Size(double.infinity, 45),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> sign_in()));
                },
                child: Text(
                  'Go Sign In',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
            Expanded(flex: 2, child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                  ),
                  children: [
                    TextSpan(text: 'Already have an account? '),
                    TextSpan(
                      text: 'Sign In',
                      style: TextStyle(
                        color: Color.fromRGBO(219, 185, 88, 1),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}