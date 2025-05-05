import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;

  const CustomButton({super.key, required this.label, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 25),
        backgroundColor: Colors.grey,
        //minimumSize: const Size.fromHeight(50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Text(label,style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold),),
    );
  }
}