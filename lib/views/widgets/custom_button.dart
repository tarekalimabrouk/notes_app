import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_file.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({this.onTap, super.key,  this.isLoding=false});
  final bool isLoding;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),

        child: Center(
          child:isLoding?const CircularProgressIndicator(color: Colors.black,): const Text(
            'Add',
            style: TextStyle(
              color: Colors.black,
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
