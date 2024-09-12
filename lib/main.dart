import 'package:flutter/material.dart';

void main() {
  runApp(BiddingApp());
}

class BiddingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bidding App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green, // Primary color is set to green
      ),
      home: MaximumBid(),
    );
  }
}

class MaximumBid extends StatefulWidget {
  @override
  _MaximumBidState createState() => _MaximumBidState();
}

class _MaximumBidState extends State<MaximumBid> {
  int _currentBid = 100; // Initial bid value

  void _increaseBid() {
    setState(() {
      _currentBid += 50; // Increase bid by $50
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bidding Page'),
        backgroundColor: Colors.green[700], // AppBar color
      ),
      body: Container(
        color: Colors.green[50], // Background color for the page
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Current Maximum Bid:',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.green[900], // Text color
                ),
              ),
              SizedBox(height: 20),
              Text(
                '\$$_currentBid',
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[800], // Bid text color
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: _increaseBid,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[600], // Button background color (use 'backgroundColor' instead of 'primary')
                  foregroundColor: Colors.white, // Text color (use 'foregroundColor' instead of 'onPrimary')
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  textStyle: TextStyle(fontSize: 18),
                ),
                child: Text('Increase Bid by \$50'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
