import 'package:flutter/material.dart';
import 'package:morpheus/shared/themes/app_colors.dart';
import 'package:provider/provider.dart';

import '../../../modules/Events/ticket_selection.dart';
import '../../../providers/events/selected_tickets.dart';

class SeeEventTicket extends StatelessWidget {
  final String Textb;
  const SeeEventTicket({Key? key, required this.Textb}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: TextButton(
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(AppColors.primary)),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  ChangeNotifierProvider<SelectedTicketsProvider>(
                create: (_) => SelectedTicketsProvider(),
                child: const TicketSelectionPage(),
              ),
            ),
          );
        },
        child: Text(
          Textb,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ), //Text
      ),
    );
  }
}
