import 'package:flutter/material.dart';

class Amenitie extends StatelessWidget {
  final String title;
  final Icon icon;
  final Widget destinationPage;

  Amenitie({@required this.title, @required this.icon, this.destinationPage});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (this.destinationPage != null) {
          Navigator.of(context).push(MaterialPageRoute<Null>(
              builder: (BuildContext context) => destinationPage));
        }
      },
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            icon,
            Text(
              title,
              style: Theme.of(context).textTheme.subhead,
            )
          ],
        ),
      ),
    );
  }
}
