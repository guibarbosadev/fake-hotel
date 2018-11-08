import 'package:flutter/material.dart';

class Reservation extends StatefulWidget {
  final String title;
  final String imagePath;

  Reservation({
    @required this.title,
    @required this.imagePath,
  });

  @override
  State createState() => _ReservationState();
}

class _ReservationState extends State<Reservation> {
  @override
  Widget build(BuildContext context) {
    final reserveButton = Align(
      alignment: FractionalOffset.bottomRight,
      child: InkWell(
        highlightColor: Colors.indigoAccent,
        splashColor: Colors.indigoAccent,
        onTap: () {
          print('tapped');
        },
        child: Container(
          margin: EdgeInsets.only(left: 45.0),
          padding: EdgeInsets.only(
            left: 25.0,
            top: 10.0,
            bottom: 10.0,
            right: 10.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(right: 15.0),
                  child: Text('Reservar')),
              Icon(Icons.calendar_today),
            ],
          ),
        ),
      ),
    );

    final titleWidget = Center(
      child: Text(
        widget.title,
        style: Theme.of(context).textTheme.title,
      ),
    );

    final imageWidget = Container(
      height: 140.0,
      decoration: const BoxDecoration(
        image: const DecorationImage(
          fit: BoxFit.fill,
          image: const AssetImage('assets/images/massage.jpeg'),
        ),
      ),
    );

    final body = Container(
      padding: EdgeInsets.all(10.0),
      child: Text(
        'Porem ipsum is simply dummy text of the printing and typesetting industry.',
        style: Theme.of(context).textTheme.body1.copyWith(
              color: Color(0xFFAAAAAA),
            ),
      ),
    );

    return Card(
      child: IntrinsicHeight(
        child: Flex(direction: Axis.horizontal, children: [
          Expanded(flex: 1, child: imageWidget),
          Expanded(
            flex: 1,
            child: Flex(
              direction: Axis.vertical,
              children: <Widget>[
                Expanded(flex: 0, child: titleWidget),
                Expanded(flex: 1, child: body),
                Expanded(flex: 0, child: reserveButton),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
