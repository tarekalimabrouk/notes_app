import 'package:flutter/material.dart';
import 'package:notes/views/widgets/search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.titel, required this.icon, this.onPressed});
  final String titel;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(titel, style: TextStyle(color: Colors.white, fontSize: 28)),
        Spacer(),
        CustomSearchIcon(
          onPressed:onPressed,
          icon: icon,
          ),
      ],
    );
  }
}
