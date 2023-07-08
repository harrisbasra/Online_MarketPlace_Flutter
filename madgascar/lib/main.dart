import 'package:flutter/material.dart';
import 'package:madgascar/otp_page.dart';

import 'Checker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    bool val = true;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   title: Text(widget.title),
      // ),
       body:

      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
                width: 91,
                height: 91,
                child: Image.asset('assets/images/img.png')),
          ),
          Container(height: 40,),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Sign Up',style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),),
              ],
            ),
          ),
          Container(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 45,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'First Name',
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(219, 185, 88, 1),
                            width: 2,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(219, 185, 88, 1),
                            width: 3,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10), // Add padding between the text fields
                Expanded(
                  child: Container(
                    height: 45,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Last Name',
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(219, 185, 88, 1),
                            width: 2,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(219, 185, 88, 1),
                            width: 3,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Container(
                  width: 120, // Adjust the width of the dropdown as needed
                  height: 45,
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(219, 185, 88, 1),
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(219, 185, 88, 1),
                          width: 1,
                        ),
                      ),
                      fillColor: Color.fromRGBO(219, 185, 88, 1),
                      filled: true,
                    ),
                    items: [
                      DropdownMenuItem<String>(
                        value: 'def',
                        child: Text('A'),
                      ),
                      DropdownMenuItem<String>(
                        value: 'abc',
                        child: Text('B'),
                      ),
                    ],
                    onChanged: (value) {
                      // Handle dropdown value change
                    },
                  ),
                ),
                SizedBox(width: 10), // Add padding between the dropdown and text field
                Expanded(
                  child: Container(
                    height: 45,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Phone Number',
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(219, 185, 88, 1),
                            width: 2,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(219, 185, 88, 1),
                            width: 3,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
          ,

          Container(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              height: 45,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                            color: Color.fromRGBO(219, 185, 88, 1),
                            width: 2
                        )),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                          color: Color.fromRGBO(219, 185, 88, 1),
                          width: 3
                      ),)
                ),
              ),
            ),
          ),
          Container(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              height: 45,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                            color: Color.fromRGBO(219, 185, 88, 1),
                            width: 2
                        )),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                          color: Color.fromRGBO(219, 185, 88, 1),
                          width: 3
                      ),)
                ),
              ),
            ),
          ),
          Container(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Checkbox(
                checkColor:Colors.white,
                value: val,
                onChanged: (bool){

                  },
                ),
                Container(width: 2,),
                const Flexible(child: Text('By signing up you accept the Terms of service and Privacy Policy', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12), ))
              ],
            ),
          ),
          Container(height: 20,),
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Checker()));
              },
              child: Text(
                'Sign Up',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
          Container(height: 40,),
          RichText(
            text: TextSpan(
              style: TextStyle(
                color: Colors.black,
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
              ),
              children: [
                TextSpan(
                  text: 'Already have an account? ',
                ),
                TextSpan(
                  text: 'Sign In',
                  style: TextStyle(
                    color: Color.fromRGBO(219, 185, 88, 1),
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            ),
          )


        ],
      )
    );
  }
}
