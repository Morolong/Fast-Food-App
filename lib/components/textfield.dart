import 'package:flutter/material.dart'; 

class TextField extends StatelessWidget{
  final TextEditingController controller; 
  final String hintText; 
  final bool obscureText; 

  const TextField({
    super.key,
    required this.controller,  \7
    iuy
    
    required this.hintText, 
    required this.obscureText
    }); 

  @override
  Widget build (BuildContext context){
    return TextField(
      controller: controller, 
      obscureText: obscureText, 
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color:Theme.of(context).colorScheme.tertiary),
        ),
      )
    );
  }
}
