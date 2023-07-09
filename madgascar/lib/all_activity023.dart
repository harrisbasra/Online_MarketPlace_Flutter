import 'package:flutter/material.dart';

import 'Checker.dart';

class all_activity023 extends StatefulWidget {
  @override
  _NotificationCardState createState() => _NotificationCardState();
}

class _NotificationCardState extends State<all_activity023> {
  bool isSwipeVisible = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (20==20) {
          setState(() {
            isSwipeVisible = !isSwipeVisible;
          });
        }
      },
      onHorizontalDragEnd: (_) {
        setState(() {
          isSwipeVisible = false;
        });
      },
      child: Stack(
        children: [
          Container(
            height: 60,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/images/user.png'),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'John Doe',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Notification Content',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Text(
                  '12:30 PM',
                ),
              ],
            ),
          ),
          if (isSwipeVisible)
            Positioned(
              right: 0,
              top: 0,
              bottom: 0,
              child: Container(
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    // Perform delete action
                  },
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class ActivityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Checker()));

          },
        ),
        title: Text(
          'All Activity',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            all_activity023(),
            all_activity023(),
            all_activity023(),
            SizedBox(height: 20),
            Text(
              'Recent',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            all_activity023(),
            all_activity023(),
            SizedBox(height: 20),
            Text(
              'Last Week',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            all_activity023(),
            all_activity023(),
            SizedBox(height: 20),
            Text(
              'Last Month',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            all_activity023(),
            all_activity023(),
          ],
        ),
      ),
    );
  }
}