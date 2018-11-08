import 'package:flutter/material.dart';
import 'reservation.dart';

class ReservationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Reserva')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(children: [Reservation(title: 'Masagem Terapeutica')]),
      ),
    );
  }
}
