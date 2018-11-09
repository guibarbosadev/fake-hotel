import 'package:flutter/material.dart';
import 'amenitie.dart';
import 'reservation_list.dart';

class AmenitieList extends StatelessWidget {

  static List<Amenitie> _amenitieList() {
    final List<Amenitie> amenities = new List<Amenitie>();
    amenities.add(Amenitie(
      icon: Icon(
        Icons.dashboard,
        color: Colors.limeAccent,
        size: 70.0,
      ),
      title: 'Serviço de Quarto',
    ));
    amenities.add(Amenitie(
      icon: Icon(
        Icons.add_comment,
        color: Colors.lightBlueAccent,
        size: 70.0,
      ),
      title: 'Reservas',
      destinationPage: ReservationList(),
    ));
    amenities.add(Amenitie(
      icon: Icon(
        Icons.alarm,
        color: Colors.purple,
        size: 70.0,
      ),
      title: 'Falar com Recepção',
    ));
    amenities.add(Amenitie(
      icon: Icon(
        Icons.zoom_in,
        color: Colors.orange[200],
        size: 70.0,
      ),
      title: 'Outros Serviços',
    ));

    return amenities;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[ GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 2.0,
        children: _amenitieList(),
        primary: true,
        shrinkWrap: true,
      ),]
    );
  }
}