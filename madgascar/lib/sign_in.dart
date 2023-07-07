import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:madgascar/Review_Page032.dart';
import 'package:madgascar/setting_page040.dart';

class sign_in extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    bool _passwordVisible = false;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:  Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(flex: 1, child: SizedBox(height: 20)),
            Center(
              child: Image.asset(
                'assets/images/img.png',
                width: 120,
                height: 120,
              ),
            ),
            Expanded(flex: 1, child: SizedBox(height: 20)),
            Text(
              'Sign In',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 45,
                    padding: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromRGBO(219, 185, 88, 1),
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        isExpanded: true,
                        value: 'Option 1',
                        items: [
                          DropdownMenuItem<String>(
                            value: 'Option 1',
                            child: Text('Option 1'),
                          ),
                          DropdownMenuItem<String>(
                            value: 'Option 2',
                            child: Text('Option 2'),
                          ),
                        ],
                        onChanged: (value) {
                          // Handle dropdown value change
                        },
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: Color.fromRGBO(219, 185, 88, 1),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Container(
                    height: 45,
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromRGBO(219, 185, 88, 1),
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextField(
                      textAlignVertical: TextAlignVertical.center,
                      keyboardType: TextInputType.number,
                      obscureText: !_passwordVisible,
                      obscuringCharacter: 'X',
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        border: InputBorder.none,
                        hintText: 'Enter Text',
                        suffixIcon: Icon(
                          Icons.check,
                          color: Color.fromRGBO(219, 185, 88, 1),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 45,
              padding: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromRGBO(219, 185, 88, 1),
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextField(
                obscureText: !_passwordVisible,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Password',
                  suffixIcon: GestureDetector(
                    onTap: () {
                      // setState(() {
                      //   _passwordVisible = !_passwordVisible;
                      // } as Null Function(bool _passwordVisible));
                    },
                    child: Icon(
                      _passwordVisible ? Icons.visibility : Icons.visibility_off,
                      color: Color.fromRGBO(219, 185, 88, 1),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged: (value) {
                    // Handle checkbox value change
                  },
                ),
                Text(
                  'Remember me',
                  style: TextStyle(fontSize: 15),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    // Handle forget password click
                  },
                  child: Text(
                    'Forget Password?',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Review_Page032()));
                },
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Divider(
                      color: Colors.black,
                      thickness: 1,
                    ),
                  ),
                ),
                Text(
                  'or',
                  style: TextStyle(fontSize: 15),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Divider(
                      color: Colors.black,
                      thickness: 1,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/facebook.png',
                  width: 25,
                  height: 25,
                ),
                SizedBox(width: 20),
                Image.asset(
                  'assets/images/google.png',
                  width: 25,
                  height: 25,
                ),
                SizedBox(width: 20),
                Image.asset(
                  'assets/images/twitter.png',
                  width: 25,
                  height: 25,
                ),
              ],
            ),
            Expanded(flex: 1, child: SizedBox()),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                    ),
                    children: [
                      TextSpan(text: 'Don\'t Have an Account? '),
                      TextSpan(
                        text: 'Create new one',
                        style: TextStyle(
                          color: Color.fromRGBO(219, 185, 88, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


}

