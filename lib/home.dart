import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _loading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF101010),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 85,
            ),
            Text(
              'TeachableMachine.com CNN',
              style: TextStyle(color: Color(0xFFEEDA28), fontSize: 18),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              'Detect Cats and Dogs',
              style: TextStyle(
                color: Color(0xFFE99600),
                fontWeight: FontWeight.w500,
                fontSize: 23,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: _loading
                  ? Container(
                      width: 280,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/cat.png',
                          ),
                          SizedBox(
                            height: 50,
                          ),
                        ],
                      ),
                    )
                  : Container(),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width - 150,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 17),
                      decoration: BoxDecoration(
                        color: Color(0xFFE9960),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        'Take a photo',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width - 150,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 17),
                      decoration: BoxDecoration(
                        color: Color(0xFFE9960),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        'Import from Gallery',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
