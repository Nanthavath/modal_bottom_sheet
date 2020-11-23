import 'package:flutter/material.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Sheet Demo'),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              onPressed: () {
                _buildBottomSheet(context);
              },
              child: Text('Show Bottom Sheet'),
            )
          ],
        ),
      ),
    );
  }

  Future _buildBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: Colors.white,
        context: context,
        builder: (builder) {
          return Container(
            child: Column(
              children: [
                Icon(
                  Icons.minimize,
                  size: 30,
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Your Component')
              ],
            ),
          );
        });
  }
}
