import 'package:flutter/material.dart';
import 'package:hotel_booking_sample/model/booking_model/booking_model.dart';
import 'package:hotel_booking_sample/model/plans_model/plans_model.dart';

List<PlansModel> plansList = [
  PlansModel(
    color: const Color.fromARGB(255, 225, 225, 231),
    svgIcon: 'assets/icons/bed-svgrepo-com.svg',
    name: 'HOTELS',
  ),
  PlansModel(
      name: 'FLIGHTS',
      color: const Color.fromARGB(255, 238, 228, 228),
      icon: const Icon(Icons.flight,
          size: 50, color: Color.fromARGB(255, 255, 148, 148))),
  PlansModel(
      name: 'FOODS',
      color: const Color.fromARGB(255, 238, 228, 228),
      svgIcon: 'assets/icons/spicy-food-svgrepo-com.svg'),
  PlansModel(
      name: 'EVENTS',
      color: const Color.fromARGB(255, 228, 228, 238),
      icon: const Icon(
        Icons.event_note_outlined,
        size: 50,
        color: Color.fromARGB(255, 96, 96, 242),
      )),
];

List<BookingModel> bookingModelList = [
  BookingModel(
    icon: const Icon(
      Icons.location_on,
      color: Color.fromARGB(255, 53, 102, 142),
    ),
    subTitle: 'Enter your Destination',
    title: 'Destination'.toUpperCase(),
  ),
  BookingModel(
    icon: const Icon(
      Icons.event_note_outlined,
      color: Color.fromARGB(255, 53, 102, 142),
    ),
    subTitle: '18 Sep - 20 Sep (2 night)',
    title: 'SELECT DATE',
  ),
  BookingModel(
      icon: const Icon(
        Icons.person_outline,
        color: Color.fromARGB(255, 53, 102, 142),
      ),
      subTitle: '1 room 1 guest',
      title: 'GEUSTS'),
];
