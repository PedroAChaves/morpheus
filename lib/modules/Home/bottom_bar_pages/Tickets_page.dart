import 'package:flutter/material.dart';
import 'package:morpheus/shared/themes/app_colors.dart';
import 'package:morpheus/shared/widgets/bottom_sheet/bottom_sheet.dart';
import 'package:morpheus/shared/widgets/bottom_sheet/ticket.dart';

class TicketsPage extends StatefulWidget {
  const TicketsPage({Key? key}) : super(key: key);

  @override
  State<TicketsPage> createState() => _TicketsPageState();
}

class _TicketsPageState extends State<TicketsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: RefreshIndicator(
          color: AppColors.accent,
          onRefresh: () async {},
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(height: 10),
            padding: const EdgeInsets.all(8),
            itemCount: 4,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    backgroundColor: Colors.transparent,
                    builder: (context) {
                      return Container(
                        height: MediaQuery.of(context).size.height - 200.0,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                          ),
                        ),
                        padding: const EdgeInsets.all(16),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: const TicketWidget(
                            width: 350,
                            height: 400,
                            isCornerRounded: true,
                            padding: EdgeInsets.all(32),
                            child: TicketData(),
                            color: Colors.white,
                          ),
                        ),
                      );
                    },
                  );
                },
                child: TicketWidget(
                  width: 360,
                  height: 150,
                  child: Expanded(
                    child: Row(
                      children: [
                        Image.asset(
                          "images/events/festaGlow.png",
                          width: 180,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text("Show Henrique e Juliano"),
                              Text(DateTime.now().toIso8601String()),
                              const Text("Av. Imigrantes Jundiaí SP"),
                              const Text("HJ Eventos"),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  color: AppColors.light,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}