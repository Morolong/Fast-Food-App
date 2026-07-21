import 'package:flutter/material.dart';
import 'package:hungry_people/components/my_button.dart';
import 'package:hungry_people/components/textfield.dart' show MyTextField; 

class RegisterPage extends StatefulWidget{
  final Function()? onTap;
  
  const RegisterPage({super.key, required this.onTap}); 

  @override
  State<RegisterPage> createState() => _RegisterPageState(); 
}

class _RegisterPageState extends State<RegisterPage>{

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();  
  final TextEditingController confirmPasswordController = TextEditingController(); 
@override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface, 
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.lock_open_rounded, 
              size: 100, 
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(height: 25), 

            Text(
              "Create an Account", 
              style: TextStyle(
                fontSize:16, 
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),

            const SizedBox(height: 25), 

            MyTextField(
              controller: emailController, 
              hintText: "Email", 
              obscureText: false,
            ), 
            const SizedBox(height: 10), 

               MyTextField(
              controller: passwordController, 
              hintText: "Password", 
              obscureText: true,
            ), 
            const SizedBox(height: 10),

                    MyTextField(
              controller: confirmPasswordController, 
              hintText: "Confirm password", 
              obscureText: true,
            ), 
            const SizedBox(height: 10),

            MyButton(
              text: "Sign Up", 
              onTap: () {},
            ), 
            const SizedBox(height: 25),

            Row(
              mainAxisAlignment:MainAxisAlignment.center, 
              children: [
                Text(
                  "Already have an account? Click ", 
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
                  ),
                  const SizedBox(width: 4), 
                  GestureDetector(
                    onTap: widget.onTap, 
                    child: Text(
                      "Login", 
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary, 
                        fontWeight: FontWeight.bold,
                      )
                    )
                  )
              ]
            )
          ],
          ),
      ),
    ); 
  }
}