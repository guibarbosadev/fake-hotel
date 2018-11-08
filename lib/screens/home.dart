import 'package:flutter/material.dart';
import 'amenitie_list.dart';

class Home extends StatelessWidget {
  final appBar = AppBar(
    title: Text('Fake Hotel'),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.perm_device_information),
        onPressed: () {
          print('tapped');
        },
      ),
      IconButton(
        icon: Icon(Icons.person_outline),
        onPressed: () {
          print('tapped');
        },
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Container(
        color: Color(0XFFF1EFF0),
        padding: EdgeInsets.all(16.0),
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 16.0),
              child: Text(
                'Comodidades do Hotel',
                style: Theme.of(context)
                    .textTheme
                    .title
                    .copyWith(color: Colors.grey[700]),
              ),
            ),
            AmenitieList(),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              width: double.infinity,
              height: 200.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/hotel.jpg'))),
              child: Align(
                alignment: FractionalOffset.bottomRight,
                child: Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                  child: OutlineButton(
                    onPressed: () {
                      print('tapped');
                    },
                    textColor: Colors.grey[900],
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 1.0),
                          child: Text('Tour'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 5.0),
                          child: Icon(Icons.navigate_next),
                        ),
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    borderSide: BorderSide(
                        color: Colors.grey[900],
                        width: 1.0,
                        style: BorderStyle.solid),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
