import 'package:flutter/material.dart';
import 'package:morpheus/shared/themes/app_colors.dart';

class AccountButton extends StatefulWidget {
  final Icon icon;
  final Text text;
  final MaterialPageRoute route;

  const AccountButton(
      {Key? key, required this.icon, required this.text, required this.route})
      : super(key: key);

  @override
  _AccountButtonState createState() => _AccountButtonState();
}

class _AccountButtonState extends State<AccountButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.8),
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(2, 4),
          ),
        ],
      ),
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            widget.route,
          );
        },
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(
            AppColors.primary,
          ),
          overlayColor: MaterialStateProperty.all<Color>(AppColors.light),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
              side: const BorderSide(
                color: AppColors.primary,
                width: 1,
              ),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            widget.icon,
            widget.text,
            const Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }
}
