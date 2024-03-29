import 'package:flutter/material.dart';

import '../../../models/event.dart';

class BougthTickets extends StatefulWidget {
  final String title;
  final String organizerName;
  final DateTime startDateTime;
  final AppEvent event;

  const BougthTickets({
    Key? key,
    required this.title,
    required this.organizerName,
    required this.startDateTime,
    required this.event,
  }) : super(key: key);

  @override
  _BougthTicketsState createState() => _BougthTicketsState();
}

class _BougthTicketsState extends State<BougthTickets> {
  // bool _isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      padding: EdgeInsets.all(MediaQuery.of(context).size.width -
          MediaQuery.of(context).size.width * 0.99),
      constraints:
          BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.99),
      decoration: BoxDecoration(
        // color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 5,
            offset: const Offset(10, 2),
          ),
        ],
      ),
      child: Card(
        color: Colors.white,
        clipBehavior: Clip.antiAlias,
        child: Row(
          children: [
            SizedBox(
              height: 80,
              width: MediaQuery.of(context).size.width * 0.5,
              child: Image.network(
                widget.event.coverUrl,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              // height: 70,
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Column(
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.title,
                        style: const TextStyle(fontSize: 19),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 70),
                        child: Text(
                          widget.startDateTime.day.toString(),
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 22),
                    child: Text(
                      widget.organizerName,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
