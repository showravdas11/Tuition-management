import 'package:flutter/material.dart';
import 'package:tution_management/Theme/Theme.dart';

class RoundedButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool loading;
  final double width;

  const RoundedButton({
    Key? key,
    required this.title,
    required this.onTap,
    this.loading = false,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60.0,
        width: width > 0
            ? width
            : screenWidth * 0.8, // Set default width as 80% of screen width
        decoration: BoxDecoration(
          color: MyTheme.buttonColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: loading
              ? CircularProgressIndicator(
                  strokeWidth: 3,
                  color: Colors.white,
                )
              : Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
        ),
      ),
    );
  }
}
