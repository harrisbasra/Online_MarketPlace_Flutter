import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class setting_page040 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Settings',
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(
                'Password',
                style: TextStyle(
                  color: Color.fromRGBO(219, 185, 88, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Current Password',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    fillColor: Colors.white12,
                    filled: true,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Make sure your password is 8 characters long and contains letters and numbers',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 10,
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'New password',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Confirm Password',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor: Colors.white12,
                          filled: true,
                          suffixIcon: Icon(Icons.visibility),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        obscuringCharacter: '*',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor: Colors.white12,
                          filled: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
              Text(
                'Address Book',
                style: TextStyle(
                  color: Color.fromRGBO(219, 185, 88, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
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
                  Text('Shipping Address'),
                  //Spacer(),
                  SizedBox(width: 10,),
                  Checkbox(
                    value: false,
                    onChanged: (value) {
                      // Handle checkbox value change
                    },
                  ),
                  Text('Billing Address'),
                ],
              ),
              SizedBox(height: 10),
              Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextField(
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              fillColor: Colors.white12,
                              filled: true,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextField(
                            obscuringCharacter: '*',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                            obscureText: false,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              fillColor: Colors.white12,
                              filled: true,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
              SizedBox(height: 50),
              Text(
                'Country & Language',
                style: TextStyle(
                  color: Color.fromRGBO(219, 185, 88, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Change country',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Change Language',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            isExpanded: true,
                            value: 'Option 1',
                            items: [
                              DropdownMenuItem<String>(
                                value: 'Option 1',
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text('Option 1'),
                                ),
                              ),
                              DropdownMenuItem<String>(
                                value: 'Option 2',
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text('Option 2'),
                                ),
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
                        )
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            isExpanded: true,
                            value: 'Option 1',
                            items: [
                              DropdownMenuItem<String>(
                                value: 'Option 1',
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text('Option 1'),
                                ),
                              ),
                              DropdownMenuItem<String>(
                                value: 'Option 2',
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text('Option 2'),
                                ),
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
                    ],
                  ),
              SizedBox(height: 20),

                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle cancel button press
                    },

                    style: ElevatedButton.styleFrom(
                      fixedSize: Size.fromHeight(70),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                    child: Text('Cancel', style: TextStyle(fontSize: 20, color: Colors.black),),
                  ),
                ),

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle save button press
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size.fromHeight(70),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0), // Set the borderRadius to 0 for rectangle shape
                      ),
                        primary: Color.fromRGBO(219, 185, 88, 1)
                    ),
                    child: Text('Save', style: TextStyle(fontSize: 20, color: Colors.white),),
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